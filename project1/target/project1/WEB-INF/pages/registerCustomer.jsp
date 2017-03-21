<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<title>Register Customer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	id="bootstrap-css">
<style type="text/css">
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	/*  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
     background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
 background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
 */
}
</style>
<script src="resources/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #DEB887">
	<div class="container">

		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<c:url var="url" value="/all/registerCustomer"></c:url>

				<form:form action="${url }" method="post" commandName="customer">
					<h2>Please register</h2>


					<h3>Basic Info</h3>


					<div class="form-group">
						<form:label path="firstname">FIRST NAME</form:label>
						<form:input path="firstname" class="form-control"></form:input>
						<form:errors path="firstname"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="lastname">LAST NAME</form:label>
						<form:input path="lastname" class="form-control"></form:input>
						<form:errors path="lastname"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="email">EMAIL</form:label>
						<form:input path="email" class="form-control"></form:input>
						<form:errors path="email"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="phonenumber">PHONE NUMBER</form:label>
						<form:input path="phonenumber" class="form-control"></form:input>
						<form:errors path="phonenumber"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="users.username">USERNAME</form:label>
						<form:input path="users.username" class="form-control"></form:input>
						<form:errors path="users.username"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="users.password">PASSWORD</form:label>
						<form:input path="users.password" type="password"
							class="form-control"></form:input>
						<form:errors path="users.password"></form:errors>
					</div>

					<h3>Billing Address</h3>

					<div class="form-group">
						<form:label path="billingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
						<form:input path="billingAddress.apartmentNumber"
							class="form-control"></form:input>
						<form:errors path="billingAddress.apartmentNumber"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="billingAddress.streetName">STREET NAME</form:label>
						<form:input path="billingAddress.streetName" class="form-control"></form:input>
						<form:errors path="billingAddress.streetName"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="billingAddress.city">CITY</form:label>
						<form:input path="billingAddress.city" class="form-control"></form:input>
						<form:errors path="billingAddress.city"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="billingAddress.state">STATE</form:label>
						<form:input path="billingAddress.state" class="form-control"></form:input>
						<form:errors path="billingAddress.state"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="billingAddress.country">COUNTRY</form:label>
						<form:input path="billingAddress.country" class="form-control"></form:input>
						<form:errors path="billingAddress.country"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="billingAddress.zipcode">ZIPCODE</form:label>
						<form:input path="billingAddress.zipcode" class="form-control"></form:input>
						<form:errors path="billingAddress.zipcode"></form:errors>
					</div>


					<div class="form-group">
						<form:label path="shippingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
						<form:input path="shippingAddress.apartmentNumber"
							class="form-control"></form:input>
						<form:errors path="shippingAddress.apartmentNumber"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="shippingAddress.streetName">STREET NAME</form:label>
						<form:input path="shippingAddress.streetName" class="form-control"></form:input>
						<form:errors path="shippingAddress.streetName"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="shippingAddress.city">CITY</form:label>
						<form:input path="shippingAddress.city" class="form-control"></form:input>
						<form:errors path="shippingAddress.city"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="shippingAddress.state">STATE</form:label>
						<form:input path="shippingAddress.state" class="form-control"></form:input>
						<form:errors path="shippingAddress.state"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="shippingAddress.country">COUNTRY</form:label>
						<form:input path="shippingAddress.country" class="form-control"></form:input>
						<form:errors path="shippingAddress.country"></form:errors>
					</div>

					<div class="form-group">
						<form:label path="shippingAddress.zipcode">ZIPCODE</form:label>
						<form:input path="shippingAddress.zipcode" class="form-control"></form:input>
						<form:errors path="shippingAddress.zipcode"></form:errors>
					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" value="Registrer"
								class="btn btn-success btn-block btn-lg" tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="" class="btn btn-danger btn-block btn-lg">Cancel</a>
						</div>
					</div>
				</form:form>

			</div>

		</div>
		
</body>

</html>