package com.capgemini.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.capgemini.dto.CartListDummy;
import com.capgemini.dto.Carts;
import com.capgemini.dto.Customers;
import com.capgemini.dto.Merchants;
import com.capgemini.dto.ProductListDummy;
import com.capgemini.dto.Products;


@Controller
public class JspController {
	@RequestMapping("/")
	public String showWelcomePage(ModelMap map)
	{
		return "welcome";
	}
	
	@RequestMapping("/productsList")
	public String showProductsList(ModelMap map,@ModelAttribute("product") Products product)
	{
		System.out.println("Inside products List");
		RestTemplate restTemplate = new RestTemplate();
		ProductListDummy response = restTemplate.getForObject("http://localhost:9090/productsList", ProductListDummy.class);
		List<Products> products = response.getProducts();
		System.out.println(products);
		map.addAttribute("productsList", products);
		return "productsList";
	}
	
	@RequestMapping("/productInfo")
	public String productInfo(ModelMap map, Integer id)
	{
		RestTemplate restTemplate = new RestTemplate();
		Products productnew = restTemplate.getForObject("http://localhost:9090/findProduct?id="+id, Products.class);
		map.addAttribute("product", productnew);
		return "productInfo";
	}
	/*@RequestMapping("/addToCart")
	public String addToCart(ModelMap map, Integer pid, Integer mid)
	{
		RestTemplate restTemplate = new RestTemplate();
		System.out.println("Inside Add to Cart");
		Carts cart = new Carts();
		cart.setProductId(pid);
		cart.setMerchantId(mid);
		Carts cartnew = restTemplate.postForObject("http://localhost:9090/addToCart", cart, Carts.class);
//		Carts cartnew= restTemplate.getForObject("http://localhost:9090/addToCart?pid="+pid"?mid=2", Carts.class);
		System.out.println(cartnew);
		map.addAttribute("cart", cartnew);
		return "viewCart";
	}*/
	
	
	@RequestMapping("/addToCart")
	public String addToCart(ModelMap map, @RequestParam(value="pid") String pid, @RequestParam(value="mid") String mid, @RequestParam(value="cid") String cid)
	{
		RestTemplate restTemplate = new RestTemplate();
		System.out.println("Inside Add to Cart");
		Carts cart = new Carts();
		cart.setProductId(Integer.parseInt(pid));
		cart.setMerchantId(Integer.parseInt(mid));
		cart.setCustomerId(Integer.parseInt(cid));
		Carts cartnew = restTemplate.postForObject("http://localhost:9090/addToCart", cart, Carts.class);
		System.out.println(cartnew);
		map.addAttribute("cart", cartnew);
		return "viewCart";
	}
		
	@RequestMapping("/viewCart")
	public String viewCart(ModelMap map, Integer cid)
	{
		System.out.println("111");
		System.out.println(cid);
		RestTemplate restTemplate = new RestTemplate();
		CartListDummy response = restTemplate.getForObject("http://localhost:9090/cartsList?cid="+cid, CartListDummy.class);
		System.out.println("222");
		List<Carts> carts = response.getCarts();
		double total=0;
		for(Carts c:carts){
			total += c.getTotalPrice();
		}
		map.addAttribute("total", total);
		System.out.println(carts);
		map.addAttribute("cartList", carts);
	
		return "viewCart";
	}
	
	@RequestMapping("/updateQuantity")
	public String updateCart(ModelMap map, Integer csn)
	{
		RestTemplate restTemplate = new RestTemplate();
		System.out.println("Inside Update Quantity");
//		Carts cartnew = restTemplate.postForObject("http://localhost:9090/updateQuantity", cart, Carts.class);
		CartListDummy response = restTemplate.getForObject("http://localhost:9090/updateQuantity?csn="+csn, CartListDummy.class);
		List<Carts> carts = response.getCarts();
		double total=0;
		for(Carts c:carts){
			total += c.getTotalPrice();
		}
		map.addAttribute("total", total);
		map.addAttribute("cartList", carts);
		return "viewCart";
	}
	
	@RequestMapping("/deleteFromCart")
	public String deleteFromCart(ModelMap map,  @ModelAttribute("cart") Carts cart)
	{
		RestTemplate restTemplate = new RestTemplate();
		System.out.println("Inside deleteFromCart");
		Carts cartnew = restTemplate.postForObject("http://localhost:9090/deleteFromCart", cart, Carts.class);
		map.addAttribute("cart", cartnew);
		return "viewCart";
	}
	
	/*@RequestMapping("/checkout")
	public String checkout(ModelMap map,Integer amount)
	{
		RestTemplate restTemplate = new RestTemplate();
		Integer d = restTemplate.getForObject("http://localhost:5000/checkout?amount="+amount, Integer.class);
		map.addAttribute("amount", amount);
		return "viewCart";
	}*/
	
	@RequestMapping("/ManageMerchants")
	public String  manageMerchants(ModelMap map, @ModelAttribute("merchant") Merchants merchant){
		 map.addAttribute("merchant", merchant);
		 return "MerchantList";
   }
	
/*	@RequestMapping("/signUpPage")
	public String showSignUpPage(ModelMap map, @ModelAttribute("customer") Customers cus)
	{
		map.addAttribute("customer", cus);
		return "signUpPage";
	}*/
	
	@RequestMapping("/addProduct")
	public String  addProduct(ModelMap map,@ModelAttribute("merchant") Merchants merchant)
	{
		RestTemplate restTemplate = new RestTemplate();
		return "addProduct";
	}
	
	@ModelAttribute("customer")
	Customers getCustomer() {
		Customers customer = new Customers();
		return customer;
	}
	
	@ModelAttribute("product")
	Products getProduct()
	{
		Products product = new Products();
		return product;
	}
	
	@ModelAttribute("merchant")
	Merchants getmerchant()
	{
		Merchants merchant = new Merchants();
		return merchant;
	}
	
	@ModelAttribute("cart")
	Carts getCart()
	{
		return new Carts();
	}
}
