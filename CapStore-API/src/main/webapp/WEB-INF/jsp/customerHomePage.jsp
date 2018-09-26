<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
body {
	position: relative;
}

#section1 {
	padding-top: 50px;
	height: 400px;
	color: #fff;
	background-color: #D3D3D3;
	width: 100%;
	margin-top: 10px;
	overflow: auto;
	white-space: nowrap;
}

#section2 {
	padding-top: 50px;
	height: 400px;
	color: #fff;
	background-color: #673ab7;
	overflow: auto;
	white-space: nowrap;
}

#section3 {
	padding-top: 50px;
	height: 400px;
	color: #fff;
	background-color: #ff9800;
	overflow: auto;
	white-space: nowrap;
}

#section4 {
	padding-top: 50px;
	height: 400px;
	color: #fff;
	background-color: #FF0000;
	overflow: auto;
	white-space: nowrap;
}

.isim {
	height: 180px;
	width: 180px;
}

.p {
	float: left;
	display: inline-block;
	margin: 2px 4px;
	padding: 10px 20px;
}

.dropbtn {
	background-color: black;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
	float: right;
}

.dropbtn:hover, .dropbtn:focus {
	background-color: #3e8e41;
}

.dropdown {
	float: right;
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 260px;
	overflow: auto;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	right: 0;
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.topButton {
	float: left;
	background-color: black;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
	float: right;
}

.topButton:hover, .topButton:focus {
	background-color: #3e8e41;
}

#tb {
	margin-left: 520px;
	float: right;
}

#myDropdown {
	margin-top: 50px;
}

.dropdown a:hover {
	background-color: #ddd;
}

.show {
	display: block;
}
</style>
</head>

<body>

<div class="row">

    <div class="col-sm-4" style="background-color:lavender;"><img src="../images/v3.png" style="width:150px;height:25px;"></div>
   
    <div class="col-sm-4" style="background-color:lavenderblush;">
    <form action="/homePage" method="post">
			
			<select name="category">
			  	<option selected value="all">All</option>
 				<option value="electronics">Electronics</option>
  				<option value="clothing">Clothing</option>
  				<option value="furniture">Furniture</option>
  				<option value="books">Books and Stationary</option>
			</select>
			
          <input type="text" name="search" placeholder="search for products"></input>
          <input type="submit" value="Go">
     </form> 
     </div>
   
    <div class="col-sm-4" style="background-color:lavender;"><a href="#"><button onclick="myFunction()" class="dropbtn">Dropdown</button></a></div>
  
  </div>
  
</div>

<div class="dropdown">
	<div id="myDropdown" class="dropdown-content">
		<a href="/homePage?category=all">Home</a>
		<a href="/custDisplay?id=${custDetails.customerId }">My Account</a>
		<a href="/">Logout</a>
	</div>
</div>

<div id="section1" class="container-fluid">
  <c:forEach items='${productList}' var='product1'>
		<div class="p">
			<a href="/pdetails?id=${product1.productId }"><img src="../images/${product1.productId}.jpg" class="isim"></a><br />
			<div class="imginfo"><a href="/pdetails?id=${product1.productId }">${product1.productName}</a></div>
		</div>
			
	</c:forEach>

</div>

 <script>
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script> 

</body>
</html>