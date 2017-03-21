<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>WELCOME||AUTOSHOP</title>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="carousel-example-generic" class="carousel slide"
		data-target="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"
				class="active"></li>
		</ol>
		<!-- Wrapper for sliders -->
		<div class="carousel-inner">
			<div class="item active">
				<img class="img-fluid" alt="Life Style Men Apparel"
					src="resources/image/1.jpg" style="height: 560px; width: 1700px">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<a href="<c:url value="/product"/>"><img class="img-fluid"
					alt="Mens Apparel" src="resources/image/3.png"
					style="height: 560px; width: 1700px"> </a>
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<a href="<c:url value="/product"/>"><img class="img-fluid"
					alt="Womens Apparel" src="resources/image/4.png"
					style="height: 560px; width: 1700px"></a>
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<a href="<c:url value="/product"/>"><img class="img-fluid"
					alt="Home Appliance" src="resources/image/5.jpg"
					style="height: 560px; width: 1700px"> </a>
				<div class="carousel-caption"></div>
			</div>





		</div>
		<!-- Controls -->
		<a class="left carousel-control"
			data-target="#carousel-example-generic" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control"
			data-target="#carousel-example-generic" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>
		</a>

	</div>
	<div class="row">




		<div class="col-sm-8 col-md-4">
			<div class="thumbnail">
				<img src="resources/image/66.png"
					alt="Generic placeholder thumbnail">


				<div class="caption">
					<h3>Ford Fiesta</h3>
					<p>Rs.23000</p>

					<p>
						<a href="#" class="btn btn-primary" role="button"> View </a> <a
							href="#" class="btn btn-default" role="button"> Add To Cart </a>
					</p>

				</div>

			</div>
		</div>
		<div class="col-sm-8 col-md-4">
			<div class="thumbnail">
				<img src="resources/image/68.png"
					alt="Generic placeholder thumbnail">


				<div class="caption">
					<h3>Ford Led</h3>
					<p>Rs.7500</p>

					<p>
						<a href="#" class="btn btn-primary" role="button"> View </a> <a
							href="#" class="btn btn-default" role="button"> Add To Cart </a>
					</p>

				</div>

			</div>
		</div>
		<div class="col-sm-8 col-md-4">
			<div class="thumbnail">
				<img src="resources/image/69.png"
					alt="Generic placeholder thumbnail">


				<div class="caption">
					<h3>Kenwood Audio & video</h3>
					<p>Rs.12500</p>

					<p>
						<a href="#" class="btn btn-primary" role="button"> View </a> <a
							href="#" class="btn btn-default" role="button"> Add To Cart </a>
					</p>

				</div>

			</div>
		</div>
	</div>
	

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>