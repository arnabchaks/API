<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Items</title>
</head>
<body>
<div align="center" style="padding-top: 50px">
<h3>Cart Items</h3>
	  
  <form:form action="/updateQuantity" method="post" commandName="cart">  
<table>  
<tr> 
	 <td><form:hidden path="serialNumber" value="${cart.serialNumber}" /></td>
    <th>Quantity</th>  
    <th>Product ID</th>
    <th>Merchant ID</th>
</tr> 
<tr>
	<td><form:hidden path="serialNumber" value="${cart.serialNumber}" /></td>
    <td><form:input type="number"  min="1" max="5" size="1" path="quantity" value="${cart.quantity}" /></td>  
    <td>${cart.productId}</td>
    <td>${cart.merchantId}</td>
    <td>${cart.totalPrice}</td>
    <td></td>
    <td><form:hidden path="productId" value="${cart.productId}"></form:hidden></td>  
    <td><form:hidden path="merchantId" value="${cart.merchantId}"></form:hidden></td>
    <td><form:hidden path="totalPrice" value="${cart.totalPrice}"></form:hidden></td>
    <td colspan="2"><input type="submit" value="Update"></td>
</tr>  
<tr><td class="error">${error}</td></tr>
<tr>  
</table>
</form:form>
<br/><br/><br/>

  <br>
</div>
</body>
</html>