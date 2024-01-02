<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
table {
	margin: 4%;
	position: absolute;
	margin-left: 20%;
	margin-top: 5%;
}

body {
	background-image:
		url("https://previews.123rf.com/images/stillfx/stillfx1201/stillfx120100035/11856661-closeup-of-rough-textured-background.jpg");
	font-weight: bolder;
	color: white;
}

.card {
	background-image:
		url("https://png.pngtree.com/background/20210709/original/pngtree-school-season-welcome-new-students-blackboard-hand-painted-picture-image_923634.jpg");
	font-weight: bolder;
	color: white;
}

form {position-absolute;
	margin-left: 20%
}
</style>
<script>
	function validate() {
		var name = "^[A-Z a-z]+$";

		var pass = "[0-9]+$";

		var email = "/^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$/i";

		var srno = document.getElementById("rno").value;
		var sname = document.getElementById("name").value;
		var semail = document.getElementById("email").value;
		var ssection = document.getElementById("section").value;
		var slocation = document.getElementById("location").value;
<%--   Rno validation--%>
	if (srno == null || srno == "") {
			alert("RollNo cannot be blank");
			return false;

		} else if (!srno.match(pass)) {
			alert("Enter valid Rollno");
			return false;

		}
<%--   name validation--%>
	if (sname == null || sname == "") {
			alert("Name cannot be blank");
			return false;

		} else if (!sname.match(name)) {
			alert("Enter valid Name");
			return false;

		}
<%--   Email validation--%>
	if (semail == null || semail == "") {
			alert("Email cannot be blank");
			return false;

		} 
	
<%--   Section validation--%>
	if (ssection == null || ssection == "") {
			alert(" Section cannot be blank");
			return false;

		} else if (!ssection.match(name)) {
			alert("Enter valid section");
			return false;

		}
<%--   LOcation validation--%>
	if (slocation == null || slocation == "") {
			alert(" Location cannot be blank");
			return false;

		} else if (!slocation.match(name)) {
			alert("Enter valid location");
			return false;

		}

	}
</script>
</head>
<body>
	<br>
	<br>
	<div class="container">

		<div class="card">
			<br>
			<center>
				<h2>Update Student</h2>
			</center>
			<div class="card-body">
				<form action="PerformUpdate" method="post">
					<div class="form-group row">
						<label for="studentRno" class="col-sm-2 col-form-label">Student
							Roll No :</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="rno" id="rno" required="required"
								placeholder="Enter student rollno">
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="studentName" class="col-sm-2 col-form-label">Student
							Name :</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="name" id="name"
								placeholder="Enter student name">
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="studentemail" class="col-sm-2 col-form-label">Student
							Email:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="email" id="email"
								placeholder="Enter student @email">
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="studentemsection" class="col-sm-2 col-form-label">Student
							Section:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="section" id="section"
								placeholder="Enter student section">
						</div>
					</div>
					<br>
					<div class="form-group row">
						<label for="studentLocation" class="col-sm-2 col-form-label">Student
							Location:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="location" id="location"
								placeholder="Enter student location">
						</div>
					</div>
					<br> <br>


				</form>
				<center>
					<input type="submit" class="btn btn-light" value="UpdateStudent" onclick="validate()" />
				</center>
</body>
</html>