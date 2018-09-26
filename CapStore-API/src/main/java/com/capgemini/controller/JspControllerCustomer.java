package com.capgemini.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.capgemini.dto.AddressList;
import com.capgemini.dto.CustomerAddress;
import com.capgemini.dto.CustomerOrders;
import com.capgemini.dto.Customers;
import com.capgemini.dto.OrderList;
import com.capgemini.dto.ProductListDummy;
import com.capgemini.dto.Products;


@Controller
public class JspControllerCustomer {
	Customers obj;
	@RequestMapping("/customerlogin")
	public String showConsumerLoginPage(ModelMap map)
	{
		return "customerLogin";
	}

	@RequestMapping("/signUpPage")
	public String showSignUpPage(ModelMap map, @ModelAttribute("customer") Customers cus){
		
		map.addAttribute("customer", cus);
		return "signUpPage";
	}
/*	@RequestMapping("/customerlogincheck")
	public String customerLoginCheck(ModelMap map,@Valid @ModelAttribute("customer") Customers customer, BindingResult error, @ModelAttribute("product") Products product){
	{
		if(error.hasErrors())
		{
			map.addAttribute("customer", customer);
			return "customerLogin";
		}
		else
		{
			RestTemplate restTemplate = new RestTemplate();
			Customers customer1 = restTemplate.postForObject("http://localhost:9090/loginCustomer",customer,Customers.class);
			if(customer1.getCustomerPswd().equals("dummy"))
			{
				map.addAttribute("error", "Invalid Credentials");
				map.addAttribute("customer", customer);
				return "customerLogin";
			}
			else
			{
				//change this to each category
				map.addAttribute("customer", customer1);
				ProductListDummy response = restTemplate.getForObject("http://localhost:9090/productsList", ProductListDummy.class);
				List<Products> products = response.getProducts();
				System.out.println(products);
				map.addAttribute("productList", products);
				return "customerHomePage";
			}
		}}
	}*/
	
	/*@RequestMapping("/customerSignUp")
	public String signUpCustomer(ModelMap map,@Valid @ModelAttribute("customer") Customers customer, BindingResult error)
	{
		if(error.hasErrors())
		{
			map.addAttribute("customer", customer);
			return "customerSignUp";
		}
		RestTemplate restTemplate = new RestTemplate();
		Customers message = restTemplate.postForObject("http://localhost:9090/customerSignUp",customer, Customers.class);
		if(message.getCustomerPswd().equals("dummy"))
		{
			System.out.println("Old Customer");
			map.addAttribute("error", "Customer Already Exists");
			map.addAttribute("customer", customer);
			return "customerSignUp";
		}
		else
		{
			System.out.println("New Customer");
			map.addAttribute("customer", message);
			return "customerHomePage";
		}
	}*/
	@RequestMapping("/signUp")
	public String signUpCostumer(ModelMap map,@Valid @ModelAttribute("customer") Customers cus, BindingResult error){
		
		if(error.hasErrors())
		{
			System.out.println(error.toString());
			map.addAttribute("customer", cus);
			return "signUpPage";
		}
	
		RestTemplate restTemplate = new RestTemplate();
		Customers message = restTemplate.postForObject("http://localhost:9090/signUpCustomer",cus, Customers.class);
		if(message.getCustomerName().equals("Dummy"))
		{	
			map.addAttribute("errorSignUp", "Credentials are Wrong");
			map.addAttribute("custDetails", cus); 
			return "signUpPage";
		}
		else {
			System.out.println("Tes");
			map.addAttribute("custDetails", cus);
			return "customerHomePage";
		}
	}
	
	@RequestMapping("/customerlogincheck")
	public String  customerLoginCheck(ModelMap map,@ModelAttribute("customer") Customers customer){
		
		RestTemplate restTemplate = new RestTemplate();
		
		obj = restTemplate.postForObject("http://localhost:9090/loginCustomer",customer, Customers.class);
		map.addAttribute("custDetails", obj);
		
		ProductListDummy response = restTemplate.getForObject("http://localhost:9090/productList?category=all&search=", ProductListDummy.class);
		List<Products> products = response.getProducts();
		map.addAttribute("productList", products);
		
		return "customerHomePage";
	}
	@RequestMapping("/homePage")
	public String showHomePage(ModelMap map, String category, String search){
		RestTemplate restTemplate = new RestTemplate();
		
		System.out.println("cat:"+category+"ser:"+search);
		
		ProductListDummy response = restTemplate.getForObject("http://localhost:9090/productList?category="+category+"&search="+search, ProductListDummy.class);
		List<Products> products = response.getProducts();
		
		map.addAttribute("custDetails", obj);
		map.addAttribute("productList", products);
		return "customerHomePage";
	}
	
	@RequestMapping("/custDisplay")
	public String showCustDetails(ModelMap map, Integer id) {
		
		System.out.println("Tes"+id);
		
		map.addAttribute("custId",id);
		return "custDisplay";
	}
	
	@RequestMapping("/custInfo")
	public String showCustInfo(ModelMap map, Integer id) {
		RestTemplate restTemplate = new RestTemplate();
		
		AddressList response = restTemplate.getForObject("http://localhost:9090/addresses?cust="+id, AddressList.class);
		List<CustomerAddress> addresses = response.getAdd();
		map.addAttribute("addresses", addresses);
		
		Customers obj = restTemplate.getForObject("http://localhost:9090/findById?id="+id, Customers.class);
		map.addAttribute("custDetails", obj);
		
		return "custInfo";
	}
	@RequestMapping("/orderInfo")
	public String showOrderInfo(ModelMap map, Integer id) {
		RestTemplate restTemplate = new RestTemplate();
		OrderList response = restTemplate.getForObject("http://localhost:9090/orders?cust="+id, OrderList.class);
		List<CustomerOrders> orders = response.getAdd();
		System.out.println("addr"+orders);
		map.addAttribute("custOrders", orders);
		Customers obj = restTemplate.getForObject("http://localhost:9090/findById?id="+id, Customers.class);
		System.out.println("after Central***** check JspHandler***"+obj.getCustomerName());
		 map.addAttribute("custDetails", obj);
		return "CustOrders";
	}

	@RequestMapping("pdetails")
	public String pubDeets(ModelMap map, Integer id) {
		RestTemplate restTemplate = new RestTemplate();
		Products response = restTemplate.getForObject("http://localhost:9090/pdetails?id="+id, Products.class);
		map.addAttribute("product", response);
		return "pdetails";
	}
	@ModelAttribute("customer")
	Customers getCustomer() {
		Customers customer = new Customers();
		return customer;
	}
}
