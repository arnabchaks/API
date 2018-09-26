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
		<th align="center">Serial number</th>
		<th  align="center">Merchant ID</th>
		<th  align="center">Product ID</th>
		<th  align="center">Quantity</th>
		<th  align="center">SubTotal</th>
	</tr>
<c:forEach items='${cartList}' var='cart'>
	<tr>
	<td  align="center">${cart.serialNumber}</td>
	<td align="center">${cart.merchantId}</td>
	<td align="center">${cart.productId}</td>	
	<td align="center"><form:input type="number" min="1" max="5" size="1" path="quantity" value="${cart.quantity}"/></td>
	<td align="center">${cart.totalPrice}</td>
	<td align="center"><a href="/updateQuantity?csn=${cart.serialNumber}">Update</a></td>
	<td align="center"><a href="/deleteFromCart?csn=${cart.serialNumber}">Delete</a></td>
	</tr>
</c:forEach>
</table>
</form:form>
<br/><br/><br/>
Total amount: ${total}
<br>
<a href="http://localhost:8888?amount=${total}">Checkout</a>
<%-- <form acton="/checkout">
	<input type="submit" value="Proceed To Checkout">
</form> --%>
  <br>
</div>
</body>
</html>