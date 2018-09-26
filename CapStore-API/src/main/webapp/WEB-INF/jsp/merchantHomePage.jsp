<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
</head>
<body>
<div align="center" style="padding-top: 50px">
<h3>Hello Merchant ${merchant.merchantName } </h3>
	  
  <table cellspacing="20">
    <tr>
      <th align="center">Id</th>
      <th align="center">Name</th>
      <th align="center">Mobile</th>
      <th align="center">Address</th>
      <th align="center">Rating</th>
    </tr>
    
      <tr>
      <td align="center">${merchant.merchantId}</td>
      <td align="center">${merchant.merchantName}</td>
      <td align="center">${merchant.merchantMobile}</td>
      <td align="center">${merchant.merchantAddress}</td>
      <td align="center">${merchant.merchantRating}</td>
      </tr>
  </table>
  <a href="/showProducts">Show Your Products</a><br><br>
  <a href="/addProduct">Add a New Product</a>
  <br>
</div>
</body>
</html>