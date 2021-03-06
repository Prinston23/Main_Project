<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>
</head>
<body>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Image</th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Category</th>
					<th>View<security:authorize access="hasRole('ROLE_ADMIN')">/Edit/Delete </security:authorize></th>
				</tr>
			</thead>
			<c:forEach var="p" items="${productList }">
				<tr>
					<td><c:url var="src" value="/resources/image/${p.id}.png"></c:url>
					 <img src="${src}" style="width: 30%" align="middle"/></td>
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.category.categoryDetails }</td>

					<c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
					<td><a href="${url}">
								<span class="glyphicon glyphicon-info-sign"></span>
								 <security:authorize
								access="hasRole('ROLE_ADMIN')">
								</a> <c:url
							var="delete" value="/admin/product/deleteproduct/${p.id}"></c:url>
						
						<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
						<c:url var="update" value="/admin/product/editform/${p.id }"></c:url>
						<a href="${update }"><span class="glyphicon glyphicon-pencil"></span></a></td>
					
					</security:authorize>
				</tr>
			</c:forEach>
		</table>


	</div>
	
</body>

</html>