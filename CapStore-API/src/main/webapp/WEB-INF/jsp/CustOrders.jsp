<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Customer Account Information</h1>
</div>
<div class="container">
<%-- <h4>Name:  ${custOrders.addressId }</h4>
<h4>Email: ${custOrders.orderTotal }</h4>
<h4>Phone: ${custOrders.time }</h4>
<h4>Addresses:</h4> --%>

<c:forEach items="${custOrders}" var="order">
	<div>
		<p>Address ID: ${order.addressId}</p>
		<p>Total: ${order.orderTotal}</p>
		<p>Time: ${order.time}</p>
		</div>
</c:forEach>
</div>
<!--  <div class="form-group">
		<h4>Change Password</h4>
      <label class="control-label col-lg-2" for="pwd">Old Password</label>
      <div class="col-lg-6">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter old password" name="pwd">
      </div>
      <label class="control-label col-lg-2" for="npwd">New Password</label>
      <div class="col-lg-6">          
        <input type="password" class="form-control" id="npwd" placeholder="Enter new password" name="npwd">
      </div>
      <label class="control-label col-lg-2" for="ncpwd">Confirm New Password</label>
      <div class="col-lg-6">          
        <input type="password" class="form-control" id="ncpwd" placeholder="Confirm new password" name="ncpwd">
      </div>
 </div> -->
</body>
</html>