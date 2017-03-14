<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
      

</head>
<body>

<nav class="navbar navbar-inverse ">
<div class="container-fluid">
<ul class="nav navbar-nav">
 <li><c:url var="home" value="/home"></c:url></li>
			<li><a href="${home }">Home</a></li>
			<li><c:url var="aboutus" value="/aboutus"></c:url></li>
			<li><a href="${aboutus }">About us</a></li>
			<li><c:url var="url" value="/admin/product/productform"></c:url></li>
		

<c:if test="${pageContext.request.userPrincipal.name !=null }">
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><c:url var="url" value="/admin/product/productform"></c:url></li>
				<li><a href="${url }">Add Product</a>
			</security:authorize>

			<li><c:url var="allProducts" value="/all/product/getAllProducts"></c:url></li>
			<li><a href="${allProducts }">Browse All Products</a>
			<li class="dropdown"><a href="" class="dropdown-toggle"
				data-toggle="dropdown"> Select by Category<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<c:url var="url1"
						value="/all/product/productsByCategory?searchCondition=Interior"></c:url>
					<li><a href="${url1}">INTERIOR</a></li>

					<c:url var="url_2"
						value="/all/product/productsByCategory?searchCondition=Audio & Video"></c:url>
					<li><a href="${url_2}">AUDIO & VIDEO</a></li>

					<c:url var="url3"
						value="/all/product/productsByCategory?searchCondition=Exterior"></c:url>
					<li><a href="${url3}">EXTERIOR</a></li>
</ul>
			
			<security:authorize access="hasRole('ROLE_USER')">
         <li><a href="<c:url value="/cart/getCartId"></c:url>">Cart</a></li>
         </security:authorize>
         			
			<li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li>
</c:if>			



			<c:if test="${pageContext.request.userPrincipal.name ==null }">
			<li><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in"></span><span  class="txt-hgt"> Login</a></li>
			<li> <a href="<c:url value="/all/registrationForm"></c:url>"><span class="glyphicon glyphicon-user"  class="txt-hgt" ></span>Register</a></li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
			</c:if>		
</ul>
</div>
</nav>
</body>
</html>