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

<title>Registration Form</title>
<style>
section {
	margin: 6px;
}

.container {
	margin: 0 auto;
	padding: 10px;
	background-color: #fff;
	border-radius: 8px;
	    box-shadow: 1px 0px 70px #c3c5c0;
	border-bottom: 5px solid #343a40 !important;
}

.container_head {
	margin: 0 auto;
	padding: 10px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-bottom: 5px solid #343a40 !important;
	height: 180px;
	width: 400px;
	border: 2px solid #0001;
  position: relative;
  animation: borderAnimation 3s infinite cubic-bezier(0.27, -0.14, 0.85, 1.15);
}

@keyframes borderAnimation {
  0% {
    border-width: 12px;
  }
  50% {
    border-width: 6px;
  }
  100% {
    border-width: 2px;
  }
}
.containerr {
	margin: 0 auto;
	padding: 10px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 0 30px ;
}

.containerchild {
	margin: 0 auto;
	padding: 10px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-style: inset;
}

form {
	width: 400px;
	margin: 10px;
	padding: 10px;
	border-style: outset;
}

input {
	width: 350px;
	color: black;
}

label {
	font: caption;
	font-size: large;
}

h1 {
	text-align: center;
	text-shadow: 4px 0px #ab9898;
	font-family: fantasy;
}
</style>

</head>
<body>
	<div>
		<%@include file="Header.jsp"%>
	</div>
	<%
	String success = (String) request.getAttribute("success");
	String err = (String) request.getAttribute("error");

	String fname = (String) request.getAttribute("firstName");
	String lname = (String) request.getAttribute("lastName");
	String pNO = (String) request.getAttribute("phoneNo");
	String email = (String) request.getAttribute("email");
	String uname = (String) request.getAttribute("username");
	String pass = (String) request.getAttribute("password");
	%>
	<section class="h-99 bg-dark">
		<hr>
		<div class="container py-5 h-90">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<hr>
				<div class="col" >
					<div class="card card-registration my-4">
						<div class="row g-0">
							<div class="col-xl-6 d-none d-xl-block" style="box-shadow :0 0 30px;">
								<img
									src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
									alt="Sample photo" class="img-fluid"
									style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
							</div>

							<div class="col-xl-6">
								<div class="containerr">
									<div class="card-body p-md-5 text-black">
										<div class="heading">
											<div class="container_head" style="">

												<h1 class="mb-0 text-uppercase">
													<i class="fa fa-edit"></i><br>Add Student
												</h1>
												<br>
												<h3 style="text-align: center;">
													<font style="color: green;"><%=(success != null) ? success : ""%></font>
													<font style="color: red;"><%=(err != null) ? err : ""%></font>
												</h3>
											</div>

										</div>
										<div class="row">
											<div class="col-md-6 mb-2">
												<form action="AddStudentCtl" method="post">
													<div class="containerchild">
													<input type="hidden" name ="id" value="<%=request.getParameter("id") %>" >
														<div class="form-group">
															<label for="firstName"><i class="fa fa-user">&nbsp;First
																	Name:</i></label><br> <input type="text" id="firstName"
																name="firstName" required> <font
																style="color: red;"><%=(fname != null) ? fname : ""%></font>
														</div>
														<div class="form-group">
															<label for="lastName"><i class="fa fa-user">&nbsp;Last
																	Name:</i></label><br> <input type="text" id="lastName"
																name="lastName" required> <font
																style="color: red;"><%=(lname != null) ? lname : ""%></font>
														</div>
														<div class="form-group">
															<label for="phoneNo"><i
																class="fa fa-phone-square">&nbsp;Phone Number:</i></label><br>
															<input type="text" id="phoneNo" name="phoneNo" required>
															<font style="color: red;"><%=(pNO != null) ? pNO : ""%></font>
														</div>
														<div class="form-group">
															<label for="email"><i class="fa fa-envelope">
																	&nbsp; Email:</i></label><br> <input type="email" id="email"
																name="email" required> <font style="color: red;"><%=(email != null) ? email : ""%></font>
														</div>
														<div class="form-group">
															<label for="username"><i class="fa fa-user">&nbsp;User
																	Name:</i></label><br> <input type="text" id="username"
																name="username" required> <font
																style="color: red;"><%=(uname != null) ? uname : ""%></font>
														</div>
														<div class="form-group">
															<label for="password"><i class="fa fa-lock">&nbsp;Password:</i></label><br>
															<input type="password" id="password" name="password"
																required> <font style="color: red;"><%=(pass != null) ? pass : ""%></font>
														</div>


														<div class="form-group">
															<input type="submit" class="btn btn-light" value="Add">

														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>

	<div>
		<%@include file="Footer.jsp"%>
	</div>
</body>
</html>