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
public class JspControllerAdmin {

	@RequestMapping("/adminlogin")
	public String showAdminLoginPage(ModelMap map)
	{
		return "adminLogin";
	}
	
	@RequestMapping("/adminlogincheck")
	public String  adminLoginCheck(ModelMap map,@Valid @ModelAttribute("admin") Admin admin, BindingResult error)
	{
		if(error.hasErrors())
		{
			return "adminLogin";
		}
		else
		{
			RestTemplate restTemplate = new RestTemplate();
			Admin message = restTemplate.postForObject("http://localhost:9090/loginAdmin",admin, Admin.class);
			System.out.println(message);
			if(message.getAdminPswd().equals("dummy"))
			{
				map.addAttribute("error", "Invalid Credentials");
				map.addAttribute("admin", admin);
				return "adminLogin";
			}
			else
			{
				map.addAttribute("admin", message);
				return "adminHomePage";
			}
		}
	}
	
	@ModelAttribute("admin")
	Admin getCar() {
		Admin admin = new Admin();
		return admin;
	}
}
