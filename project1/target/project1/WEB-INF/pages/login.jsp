<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#DEB887">

<div class="container-wrapper">
	<div class="login-container">
		<div id="login-box">
		<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <h2>Please Signin </h2>
			<hr class="colorgraph">
<form name="loginForm" method="post" 


action="<c:url value="/j_spring_security_check"></c:url>">

	<div class="form-group">
					<label for="username">User: </label> <input type="text"
						id="username" name="j_username" class="form-control" />
				</div>

<div class="form-group">
					<label for="password">Password: </label> <input type="password"
						id="password" name="j_password" class="form-control" />
				</div>

<input type="submit" value="sumbit" class="btn btn-default"/>
</form>

</body>

</html>