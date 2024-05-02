<%@page import="in.co.online.project.submission.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>EditFaculty</title>
<style>

section {
	margin: 6px;
	height: 700px;
	float: inherit;
}
.container {

	margin: 0 auto;
	padding: 10px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0px -1px 85px #83aab9;
	border-bottom: 5px solid #343a40 !important;
	margin:15px 0px 10px 0px;
	text-align: center;
	background: #b7c2cb;
}



.containerchild {
	margin: 0 auto;
	padding: 10px;
	border-radius: 8px;
	box-shadow: 0 0 18px black;
	border-style: inset;
}

form {
	width: 400px;
	margin: 10px 0px 0px 80px;
	padding: 10px;
	text-align: left;
}

input {
	width: 350px;
}

label {
	font: caption;
	font-size: large;
}

</style>
</head>

<body>
<div>
<%@include file="Header.jsp" %>
</div>
<section class="h-99 bg-dark">
<div class="row">


</div>
<% UserBean ubean = (UserBean)request.getAttribute("bean"); %>
	
		<div class="container" style="width: 600px;">
		<h3>Edit Faculty Information..!</h3>
			<form action="EditFacultyCtl" method="post">
				<div class="containerchild">
				
				
				        <input class="id" size="50" type ="hidden" name="id" value="<%=(ubean.getId()>0)?ubean.getId():""%>"><br><br>
				
					<div class="form-group">
						<label for="firstName"><i class="fa fa-user">&nbsp;First
								Name:</i></label><br> <input type="text" id="firstName"
							name="firstName" required value="<%=(ubean.getFistName()!=null)?ubean.getFistName():"" %>"> 
					</div>
					<div class="form-group">
						<label for="lastName"><i class="fa fa-user">&nbsp;Last
								Name:</i></label><br> <input type="text" id="lastName" name="lastName"
							required value="<%=(ubean.getLastName()!=null)?ubean.getLastName():"" %>"> 
					</div>
					<div class="form-group">
						<label for="phoneNo"><i class="fa fa-phone-square">&nbsp;Phone
								Number:</i></label><br> <input type="text" id="phoneNo" name="phoneNo"
							required value="<%=(ubean.getPhoneNo()!=null)?ubean.getPhoneNo():"" %>"> 
					</div>
					<div class="form-group">
						<label for="email"><i class="fa fa-envelope"> &nbsp;
								Email:</i></label><br> <input type="email" id="email" name="email"
							required value="<%=(ubean.getEmail()!=null)?ubean.getEmail():"" %>">
					</div>
					<div class="form-group">
						<label for="username"><i class="fa fa-user">&nbsp;User
								Name:</i></label><br> <input type="text" id="username" name="username"
							required value="<%=(ubean.getUsername()!=null)?ubean.getUsername():"" %>"> 
					</div>
					<div class="form-group">
						<label for="password"><i class="fa fa-lock">&nbsp;Password:</i></label><br>
						<input type="password" id="password" name="password" required value="<%=(ubean.getPassword()!=null)?ubean.getPassword():"" %>">
						
					</div>


					<div class="form-group">
						<input type="submit" class="btn btn-light" value="Add">

					</div>
				</div>
			</form>
		</div>
		</div>
		</div>
		</section >
		<div>
    <%@include file="Footer.jsp" %>
    </div>
		</body>
</html>