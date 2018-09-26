<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Your Account</title>
</head>
<body>
<div class="container" align="center">
<h1>  Your Details </h1>
<br/>
<div class="row">

<div class="col-lg-4 col-md-4 col-xs-4 thumb">
    <a class="thumbnail" href="/viewCart?cid=${custId}">
        <img class="img-responsive" src="http://placehold.it/400x300" alt="">
	<h5> Cart </h5>
    </a>
</div>
<div class="col-lg-4 col-md-4 col-xs-4 thumb">
    <a class="thumbnail" href="/orderInfo?id=${custId}">
        <img class="img-responsive" src="http://placehold.it/400x300" alt="">
	<h5> Orders</h5>
    </a>
</div>
<div class="col-lg-4 col-md-4 col-xs-4 thumb">
    <a class="thumbnail" href="#">
        <img class="img-responsive" src="http://placehold.it/400x300" alt="">
	<h5> WishList </h5>	
    </a>
</div>

<div class="row">

<div class="col-lg-4 col-md-4 col-xs-4 thumb">
    <a class="thumbnail" href="#">
        <img class="img-responsive" src="http://placehold.it/400x300" alt="">
	<h5> Seller Account</h5>
    </a>
</div>
<div class="col-lg-4 col-md-4 col-xs-4 thumb">
    <a class="thumbnail" href="/custInfo?id=${custId}">
        <img class="img-responsive" src="http://placehold.it/400x300" alt="">
	<h5> Personal Details </h5>
    </a>
</div>
<div class="col-lg-4 col-md-4 col-xs-4 thumb">
    <a class="thumbnail" href="#">
        <img class="img-responsive" src="http://placehold.it/400x300" alt="">
	<h5> Signout </h5>	
    </a>
</div>
</div>
</div>
 
</body>
</html>