<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="FindStudent.jsp"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>


</style>
</head>
<body>
	<table class="table table-striped table-hover" align="center" >
		<thead align="center">
			<tr scope="row">
				<th>Student RollNo</th>
				<th>Student Name</th>
				<th>Student Email</th>
				<th>Student Section</th>
				<th>Student Location</th>
			</tr>
		</thead>

		<tbody>
			<tr scope="row" align="center">

				<td scope="col">${bean.getRno()}</td>
				<td scope="col">${bean.getName()}</td>
				<td scope="col">${bean.getEmail()}</td>
				<td scope="col">${bean.getSection()}</td>
				<td scope="col">${bean.getLocation()}</td>

			</tr>

			</tr>
		</tbody>

	</table>
</body>
</html>