<%@page import="in.co.online.project.submission.bean.UserBean"%>
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
	href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;display=swap">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Add these links to your HTML -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

<style>
#hd {
	font-size: 2.45em;
	transition: all .3s;
	color: #fed136;
	font-family: "Kaushan Script", "Helvetica Neue", Helvetica, Arial,
		cursive;
}

.nav-iteam:hover {
	color: yellow;
}

h1 {
	text-shadow: 2px 2px white;
}
</style>
<title>Header</title>
</head>
<body>
	<header class="m">
		<!-- Navbar -->
		<%
		UserBean bean = (UserBean) session.getAttribute("userbean");
		%>
		<nav class="navbar navbar-expand-lg navbar-dark ml mr"
			style="background-color: #343a40; height: 96px;">
			<div class="container-fluid">
				<a class="navbar-brand" href="/Online-Project-Submission"><h1
						id="hd">InnoSync</h1></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarNav">

					<ul class="navbar-nav me-auto mb-2 mb-lg-0">

						<%
						if (bean != null) {
						%>
						<%
						if (bean.getRoleId() == 1) {
						%><li class="nav-item active"><a class="nav-link"
							aria-current="page" href="/Online-Project-Submisssion"><i
								class="fa fa-home" style="font-size: 35px">&nbsp;Admin</i></a></li>

						<li class="nav-item active" style="margin-top: 7px;"><a
							class="nav-link" aria-current="page" href="AddFaculty">&nbsp;&nbsp;&nbsp;<i
								class='fa fa-edit' style='font-size: 25px'>&nbsp;Add Faculty</i></a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#"></a></li>
						<li class="nav-item active" style="margin-top: 7px; color: white;">
				<div class="dropdown">
					<a class="btn btn dropdown-toggle " href="#" role="button" 
						id="teamDropdown" data-toggle="dropdown" aria-haspopup=""
						aria-expanded=""> <i class='fa fa-edit'
						style='font-size: 25px; color: white;'>&nbsp;View</i>
					</a>
					<div class="dropdown-menu custom-dropdown-menu"
						aria-labelledby="teamDropdown">
						<a></a>
						<a class="dropdown-item" href="ViewFaculty">View Faculty</a>
						
						<a class="dropdown-item" href="ViewStudentByAdmine">View Student</a>
												<a class="dropdown-item" href="ViewAllProjects">View Project</a>
												
									<a
							class="dropdown-item" href="ViewTeamByAdimin">View Team</a>
						
					</div>
					
				</div>
			</li>
					</ul>
				</div>
			</div>

			<div class="collapse navbar-collapse" id="navbarExample01">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="LoginCtl"><i class="fa fa-sign-out"
							style="font-size: 25px">&nbsp;Logout</i></a></li>
				</ul>
			</div>

			<%
			} else if (bean.getRoleId() == 2) {
			%>
			<li class="nav-item active"><a class="nav-link"
				aria-current="page" href="/Online-Project-Submisssion"><i
					class="fa fa-home" style="font-size: 35px">&nbsp;Faculty</i></a></li>

			<li class="nav-item active" style="margin-top: 7px;">
				<div class="dropdown">
					<a class="btn btn dropdown-toggle" href="#" role="button"
						id="teamDropdown" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class='fa fa-edit'
						style='font-size: 25px; color: white;'>&nbsp;Team</i>
					</a>
					<div class="dropdown-menu custom-dropdown-menu"
						aria-labelledby="teamDropdown">
						<a class="dropdown-item" href="AddTeamCtl">Add Team</a> <a
							class="dropdown-item" href="ViewTeamCtl">View Team</a>
					</div>
				</div>
			</li>
			<li class="nav-item active" style="margin-top: 7px; color: white;">
				<div class="dropdown">
					<a class="btn btn dropdown-toggle " href="#" role="button"
						id="teamDropdown" data-toggle="dropdown" aria-haspopup=""
						aria-expanded=""> <i class='fa fa-edit'
						style='font-size: 25px; color: white;'>&nbsp;View</i>
					</a>
					<div class="dropdown-menu custom-dropdown-menu"
						aria-labelledby="teamDropdown">
						<a
							class="dropdown-item" href="ViewTeamCtl">View Team</a>
						<a class="dropdown-item" href="ViewStudentCtl">View Student</a> <a
							class="dropdown-item" href="ViewProjectsCtl">View Project</a>

					</div>

				</div>
			</li>


			<li class="nav-item"><a class="nav-link" href="#"> </a></li>
			<li class="nav-item"><a class="nav-link" href="#"></a></li>
			</ul>
			</div>
			</div>
			<div class="collapse navbar-collapse" id="navbarExample01">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item "><a class="nav-link" aria-current="page"
						href="LoginCtl"><i class="fa fa-sign-out"
							style="font-size: 25px">&nbsp;Logout</i></a></li>

				</ul>
			</div>
			<%
			} else if (bean.getRoleId() == 3) {
			%>
			<li class="nav-item active" style="margin-top: 7px;"><a
				class="nav-link" aria-current="page"
				href="/Online-Project-Submisssion"><i class="fa fa-home"
					style="font-size: 35px">&nbsp;Student..</i></a></li>

			
          
			<li class="nav-item active" style="margin-top: 8px;"><a
							class="nav-link" aria-current="page" href="SubmitProjectCtl">&nbsp;&nbsp;&nbsp;<i
								class='fa ' style='font-size: 25px'>&nbsp;Submit Project</i></a>
						</li>
			<li class="nav-item"><a class="nav-link" href="#"></a></li>
			</ul>
			</div>
			</div>

			<div class="collapse navbar-collapse" id="navbarExample01">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item "><a class="nav-link" aria-current="page"
						href="LoginCtl"><i class="fa fa-sign-out"
							style="font-size: 25px">&nbsp;Logout</i></a></li>

				</ul>
			</div>
			</div>
			<%
			}
			} else {
			%>
			<li class="nav-item active"><a class="nav-link"
				aria-current="page" href="/Online-Project-Submisssion"><i
					class="fa fa-home" style="font-size: 35px">&nbsp;Home</i></a></li>

			<li class="nav-item" style="margin-top: 7px;"><a
				class="nav-link" aria-current="page" href="#"></i></a></li>
			<li class="nav-item"><a class="nav-link" href="#"></a></li>
			<li class="nav-item"><a class="nav-link" href="#"></a></li>
			</ul>
			</div>
			</div>
			<div class="collapse navbar-collapse " id="navbarExample01">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item active"><a class="nav-link"
						aria-current="page" href="LoginCtl"><i class="fa fa-sign-in"
							style="font-size: 25px">&nbsp;Sign</i></a></li>

				</ul>
			</div>
			<%
			}
			%>
			</div>
		</nav>

	</header>
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const header = document.querySelector('header');

			window.addEventListener('scroll', function() {
				if (window.scrollY > 50) {
					header.classList.add('scrolled');
				} else {
					header.classList.remove('scrolled');
				}
			});
		});
	</script>
</body>
</html>
