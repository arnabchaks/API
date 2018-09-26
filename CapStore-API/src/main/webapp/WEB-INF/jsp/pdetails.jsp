<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
* {
	box-sizing: border-box;
}

.img-zoom-container {
	position: relative;
}

.img-zoom-lens {
	position: absolute;
	border: 1px solid #d4d4d4;
	/*set the size of the lens:*/
	width: 40px;
	height: 40px;
}

.img-zoom-result {
	border: 1px solid #d4d4d4;
	/*set the size of the result div:*/
	width: 300px;
	height: 300px;
}

.name {
	font-weight: bold;
	font-size: 36px;
}

.gnrl {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
}

.center1 {
	text-align: center;
}

.center1 table {
	font-family: Arial, Helvetica, sans-serif;
	font-size: x-large;
	font-weight: bold;
}

normal {
	font-weight: normal;
}

normal {
	font-weight: normal;
}

normal {
	font-weight: normal;
}

normal {
	font-family: Arial, Helvetica, sans-serif;
}

.right {
	text-align: right;
}

.norm {
	font-family: Arial, Helvetica, sans-serif;
}

ul.gallery {
	margin-left: 3vw;
	margin-right: 3vw;
}

.zoom {
	-webkit-transition: all 0.35s ease-in-out;
	-moz-transition: all 0.35s ease-in-out;
	transition: all 0.35s ease-in-out;
	cursor: -webkit-zoom-in;
	cursor: -moz-zoom-in;
	cursor: zoom-in;
}

.zoom:hover, .zoom:active, .zoom:focus {
	/**adjust scale to desired size, 
add browser prefixes**/
	-ms-transform: scale(2.5);
	-moz-transform: scale(2.5);
	-webkit-transform: scale(2.5);
	-o-transform: scale(2.5);
	transform: scale(2.5);
	position: relative;
	z-index: 50;
}

/**To keep upscaled images visible on mobile, 
increase left & right margins a bit**/
@media only screen and (max-width: 768px) {
	ul.gallery {
		margin-left: 15vw;
		margin-right: 15vw;
	}

	/**TIP: Easy escape for touch screens,
give gallery's parent container a cursor: pointer.**/
	.DivName {
		cursor: pointer
	}
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>

	<h1>Image Zoom</h1>

	<div class="container">
		<img class="thumbnail zoom"
			src="../images/${product.productId}.jpg"
			width="300" height="240">
	</div>

	<script>
		// Initiate zoom effect:
		imageZoom("myimage", "myresult");
	</script>

	<hr />
	<table>

		<tr>
			<td>Product id:</td>
			<td>${product.productId}</td>
		</tr>
		<tr>
			<td>Name:</td>
			<td>${product.productName}</td>
		</tr>
		<tr>
			<td>Price:</td>
			<td>${product.productPrice}</td>
		</tr>
		<tr>
			<td>Rating:</td>
			<td>${product.productRating}</td>
		</tr>

		<tr>
			<td>Quantity:</td>
			<td><select name="quantity">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
			</select>
	</table>


	<table>
		<tr>
			<td><input type="submit" value="Add to cart"> </input></td>
		</tr>
	</table>
</body>
</html>