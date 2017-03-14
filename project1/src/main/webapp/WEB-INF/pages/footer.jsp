<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Including the footer resource from resoruces/css/footer.css -->
<link href="<c:url value="/resources/css/footer.css" />"
	rel="stylesheet">
<div class="footer" id="footer">

	<div class="container">

		<!-- Adding First Section to the Footer -->
		<div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
			<h3>ContactUs</h3>
			<ul>
			
			<li><span class="glyphicon glyphicon-phone"></span>+91-9876543210</li>
			</ul>
		</div>
		<!-- Adding Second Section For categories -->
		<div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
			<h3>CATEGORIES</h3>
			<ul>
					<c:url var="url"
						value="/all/product/productsByCategory?searchCondition=Interior"></c:url>
					<li><a href="${url}">INTERIOR</a></li>

					<c:url var="url_2"
						value="/all/product/productsByCategory?searchCondition=Audio & Video"></c:url>
					<li><a href="${url_2}">AUDIO & VIDEO</a></li>

					<c:url var="url3"
						value="/all/product/productsByCategory?searchCondition=Exterior"></c:url>
					<li><a href="${url3}">EXTERIOR</a></li>
					</ul>
		</div>
		
		<div class="col-lg-4  col-md-2 col-sm-4 col-xs-6">
			<h3>POLICIES</h3>
			<ul>
				<li>100% ORIGINAL guarantee for all products</li>
				<li>Only regular priced items may be refunded.</li>
				<li>Free delivery for all orders above Rs 500</li>
				<li>Sale items(bought with Discount codes) are non-refundable</li>

			</ul>
		</div>


		<div class="col-lg-3  col-md-2 col-sm-4 col-xs-6">
			<h3>CALL US</h3>
			<ul>
				<li><span class="glyphicon glyphicon-phone-alt"></span>Give a
					Misedcall on 1000-000-3500</li>


			</ul>
		</div>
	</div>
</div>


</body>
</html>