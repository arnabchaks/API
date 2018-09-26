<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Customer Login Page</title>
</head>
<!-- <style>
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
</style> -->
<%-- <body>

<h2>Customer Login Page</h2>

<!-- <img alt="" src="../images/welcomeimg.jpg"  style="width:100%;"> -->
<div class="loginform">
<form:form action="/customerlogincheck" method="post" commandName="customer">  

<table>  


<tr>  
    <td >Email</td>  
    <td><form:input path="customerEmail" value="${customer.customerEmail}" /></td>  
    <td><form:errors path="number" cssClass="error" /></td>
</tr>  
<tr>  
    <td >Password</td>  
    <td><form:input type="password" path="customerPswd" value="${customer.customerPswd}" /></td>  
    <td><form:errors path="password" cssClass="error"/></td>
</tr>  
<tr/>
<tr/>
<tr>  <td/>
    <td colspan="2"><input type="submit" value="login">
</td>

<td><input type="submit" value="Cancel" formaction="/"> </td></tr>
</table>
</form:form>
</div>

</body> --%>



<body>
  <div class="container" >
  <br/>
  <h2>Customer Login</h2>
  <br/>
  <form:form action="/customerlogincheck" method="post" class="form-horizontal" commandName="customer">
    <div class="form-group">
	  <label class="control-label col-lg-2" for="email">Email:</label>
      <div class="col-lg-6 col-lg-offset-3">
        <form:input type="email" class="form-control" id="email" placeholder="Enter email" path="customerEmail" value="${customer.customerEmail}"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-lg-2" for="pwd">Password:</label>
      <div class="col-lg-6">          
        <form:input type="password" class="form-control" id="pwd" placeholder="Enter password" path="customerPswd" value="${customer.customerPswd}"/>
      </div>
    </div>
     <div class="form-group">        
      <div class="col-lg-6 col-lg-offset-3">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
    <!-- <div class="form-group">        
      <div class="col-lg-6 col-lg-offset-3">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div> -->
    </div>
   
  </form:form>
</div>

</body>	

</html>