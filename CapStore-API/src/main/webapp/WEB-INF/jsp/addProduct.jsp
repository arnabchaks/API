<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
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
</body>
</html>