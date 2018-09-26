<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Info</title>
</head>
<body>
<h2>Product Info Page</h2>

 <table cellspacing="20">
    <tr>
      <th align="center">Product ID</th>
      <th align="center">Product Name</th>
      <th align="center">Price</th>
      <th align="center">Quantity</th>
      <th align="center">Rating</th>
      <th align="center">Merchant ID</th>
      <th align="center">Merchant Name</th>
    </tr>
      <tr>
      <td>${product.productId}</td>
      <td>${product.productName}</td>
      <td>${product.productPrice}</td>
      <td>${product.productQuantity}</td>
      <td>${product.productRating}</td>
      <td>${product.merchantsId}</td>
      <td>${product.merchantsName}</td>
      <td><a href="/addToCart?pid=${product.productId}&mid=2&cid=10003">Add To Cart</a></td>
      </tr>
 
  </table>


</body>
</html>