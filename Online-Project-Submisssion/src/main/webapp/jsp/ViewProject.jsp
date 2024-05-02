<%@page import="in.co.online.project.submission.bean.ProjectBean"%>
<%@page import="java.net.UnknownServiceException"%>
<%@page import="java.util.List"%>
<%@page import="in.co.online.project.submission.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Projects</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
section {
	padding: 20px;
	margin: 10px;
	background-image: url("image/addt.jpg");
}

.three-d-effect {
	font-size: 50px;
	color: black; /* Light color */
	text-shadow: 1px 1px 1px #ccc, -6px -2px 2px #bbb;
	/* Text shadow for the 3D effect */
	font-weight: bold; /* Make the text bold */
	animation: shadow-animation 2s infinite alternate;
	color: #121110; /* Animation for the shadow */
	font-family: 'Kaushan Script';
}

@
keyframes shadow-animation { 0% {
	text-shadow: 1px 1px 1px #ccc, 2px 2px 2px #bbb;
}
100




%
{
text-shadow




:




-1px




-1px




1px




#ccc
,
-2px




-2px




2px




#bbb


;
}
}
</style>
</head>
<body>
	<div>

		<%@ include file="/jsp/Header.jsp"%>
	</div>
	<section>
		<%
		String err = (String) request.getAttribute("err");
		String success = (String) request.getAttribute("success");
		String error = (String) request.getAttribute("error");
		String suc = (String) request.getAttribute("succ");
		%>
		<div class="container">
			<h1 class="three-d-effect mt-4 mb-4">List of Projects</h1>
			<h3 style="text-align: center;">
				<b> <font color="green"><%=(success != null) ? success : ""%></font></b>
			</h3>
			<h3 style="text-align: center;">
				<b> <font color="green"><%=(suc != null) ? suc : ""%></font></b>
			</h3>
			<div class="row">
				<%
				List<ProjectBean> list = (List<ProjectBean>) request.getAttribute("list");
				int idex = 1;
				for (ProjectBean pbean : list) {
				%>
				<div class="col-md-4">
					<div class="card mb-4">
						<div class="card-body">
							<h5 class="card-title"><%=pbean.getProjectName()%></h5>
							<p class="card-text">
								<strong>Team Name:</strong>
								<%=pbean.getTeamName()%><br> <strong>Guide Name:</strong>
								<%=pbean.getGuideName()%><br> <strong>Project
									Problem:</strong>
								<%=pbean.getProjectProblem()%><br>

								<!-- Add more project details here -->
							</p>


							<a href="ViewPPTServlet?projectId=<%=pbean.getId()%>"
								class="btn btn-primary" style="background: #fed136;">Open
								PPT</a>


							<%-- 	<a href="<%= pbean.getProjectPpt() %>" class="btn btn-primary" style="background:#fed136;"
							target="_blank">Open PPT</a>  --%>
							<a href="  <%=pbean.getGithupUrl()%> " class="btn btn-primary"
								style="background: #fed136;" target="_blank">Visit GitHub</a>
						</div>
					</div>
				</div>
				<%
				}
				%>

			</div>
		</div>
	</section>
	<script>
		function openPPT(projectName, pptData) {
			var pptBlob = new Blob([ atob(pptData) ], {
				type : 'application/vnd.ms-powerpoint'
			});
			var pptObjectURL = URL.createObjectURL(pptBlob);
			window.open(pptObjectURL, projectName, 'width=800,height=600');
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	<div>
		<%@ include file="/jsp/Footer.jsp"%>
	</div>

</body>
</html>
