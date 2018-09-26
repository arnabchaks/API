<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}
button:hover {
    opacity:1;
}
/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
/* Add padding to container elements */
.container {
    padding: 16px;
    width: 1000px;
    position: absolute;
    margin-left: 1200px;
    transform: translate(-100%, -105%);
    
}
/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}
#ee{
color:maroon;
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<img alt="" src="../images/welcomeimg.jpg"  style="width:100%;">
<form:form action="/signUp" style="border:1px solid #ccc" method="post" commandName="customer">
  <table class="container">
    <tr><td><h1>Sign Up</h1></td></tr>
    <tr><td><p>Please fill in this form to create an account.</p></td></tr>
    <tr><td><hr></td></tr>
	
	<tr><td><label for="name"><b>Name</b></label>
    <form:input path="customerName"  name="name" value="${customer.customerName}"/></td>
	<td id="ee"><form:errors path="customerName" class="error" /></td></tr>
    <tr><td><label for="email"><b>Email</b></label>
    <form:input path="customerEmail" placeholder="Enter Email" name="email" value="${customer.customerEmail}"/></td>
	<td id="ee"><form:errors path="customerEmail" class="error" id="err" /></td></tr>
    <tr><td><label for="psw"><b>Password</b></label>
    <form:input type="password" path="customerPswd" placeholder="Enter Password" name="psw" /></td>
	<td id="ee"><form:errors path="customerPswd" class="error" id="err"/></td></tr>
   
    <tr><td><label for="MobileNumber"><b>Mobile Number</b></label>
    <form:input path="customerMobile" placeholder="Enter Mobile Number" name="number" value="${customer.customerMobile}" /></td>
    <td id="ee"><form:errors path="customerMobile" class="error" id="err"/></td></tr>
    <tr><td><p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p></td></tr>
	<tr/>
	<tr/>
	<tr><td>
    <div class="clearfix">
      <button type="submit" formaction="/" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div></td></tr>
  </table>
</form:form>
<%-- <div class="container">
<form:errors path="customerName" class="error"/></div>
 <div class="container"><spring:hasBindErrors name="signUpPage">
	<c:forEach var="error" items="${errors.allErrors}">
		<b><spring:message message="${error}" /></b>
		<br />
	</c:forEach>
    </spring:hasBindErrors></div> --%>
</body>
</html>