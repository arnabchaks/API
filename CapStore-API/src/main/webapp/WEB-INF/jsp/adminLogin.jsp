<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<style>
img {
    opacity: 0.20;
}
.error{
color: red;
}
.loginform{
position: absolute;
    top: 40%;
    left: 40%;
    transform: translate(-50%, -50%);
    padding: 10px 20px;

}
h2{
position: absolute;
    top: 20%;
    left: 40%;
    transform: translate(-50%, -50%);
}
</style>
<body>

<h2>Admin Login Page</h2>
<img alt="" src="../images/welcomeimg.jpg"  style="width:100%;">
<div class="loginform">

<form:form action="/adminlogincheck" method="post" commandName="admin">  

<table>  

<tr>  
    <td >Enter User Id:</td>  
    <td><form:input type="text" path="adminId" value="${admin.adminId}"/></td>  
    <td><form:errors path="adminId" cssClass="error" /></td>
</tr>  
<tr>  
    <td >Enter password:</td>  
    <td><form:input type="password" path="adminPswd" value="${admin.adminPswd}" /></td>  
    <td><form:errors path="adminPswd" cssClass="error"/></td>
</tr>  

<tr>  
    <td colspan="2"><input type="submit" value="login">
</td>
<td><input type="submit" value="Cancel" formaction="/"> </td></tr>
<tr><td class="error">${error}</td></tr>
</table>
</form:form>
</div>

</body>

</body>
</html>