package com.capgemini.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.capgemini.dto.Admin;
import com.capgemini.dto.Carts;
import com.capgemini.dto.Customers;
import com.capgemini.dto.Merchants;
import com.capgemini.dto.ProductCategory;
import com.capgemini.dto.ProductListDummy;
import com.capgemini.dto.Products;


@Controller
public class JspControllerMerchant {

	@RequestMapping("/merchantlogin")
	public String showMerchantLoginPage(ModelMap map)
	{
		return "merchantLogin";
	}
	@RequestMapping("/merchantlogincheck")
	public String merchantLoginCheck(ModelMap map,@Valid @ModelAttribute("merchant") Merchants merchant, BindingResult error){
	{
		if(error.hasErrors())
		{
			map.addAttribute("merchant", merchant);
			return "merchantLogin";
		}
		else
		{
			RestTemplate restTemplate = new RestTemplate();
			Merchants merchant1 = restTemplate.postForObject("http://localhost:9090/loginMerchant",merchant,Merchants.class);
			if(merchant1.getMerchantPswd().equals("dummy"))
			{
				map.addAttribute("error", "Invalid Credentials");
				map.addAttribute("merchant", merchant);
				return "merchantLogin";
			}
			else
			{
				map.addAttribute("merchant", merchant1);
				return "merchantHomePage";
			}
		}}
	}
	
	@ModelAttribute("merchant")
	Merchants getmerchant()
	{
		Merchants merchant = new Merchants();
		return merchant;
	}
}
