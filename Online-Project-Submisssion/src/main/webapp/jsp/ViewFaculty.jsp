<%@page import="java.net.UnknownServiceException"%>
<%@page import="java.util.List"%>
<%@page import="in.co.online.project.submission.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty</title>
<style>
#con {
	
	
	width: 99.5%;
	margin-top: -15px;
	margin-bottom: -65px;
	box-shadow: 0px 0px 0px ;
}
th, td{
border-radius: 20px;
color: white;
background: black;
}

h1{
color: #fed136;
 margin-top:10px;
    text-align: center;
    text-shadow: -3px -2px #f6ecec;
    font-family: 'Kaushan Script';
    font-size: xxx-large;}

</style>
</head>
<body>
<body>

	<div>
		<%@ include file="Header.jsp"%>
	</div>
	<br>
	<%
	String err = (String) request.getAttribute("err");
	String success = (String) request.getAttribute("success");
	String error = (String) request.getAttribute("error");
	String suc = (String)request.getAttribute("succ");
	%>



	<div id="con" class="container-fluid modal-content h-99 bg-dark" style="">



		<div class="col-sm-4"></div>

		<div class="c" align="center" style="color: white">
			<h1 style=" text-align: center;">ALL Faculties</h1>

			<h3 style="text-align: center;">
			<b>	<font color="green"><%=(success != null) ? success : ""%></font></b>
			</h3>
			<h3 style="text-align: center;">
			<b>	<font color="green"><%=(suc != null) ? suc : ""%></font></b>
			</h3>


			<b><font style="color: red;"><%=(error != null) ? error : ""%></font></b>
		</div>




		<div align="center">

			<b><font color="red"><h4><%=(err != null) ? err : ""%>
					</h4></font></b>
		</div>



		<div class="col-xs-12" align="center" style="overflow-x: auto">

			<table class="table  table-bordered table-hover"
				style="width: 100%; text-align: center;">

				<thead style="background-color: black; color: white;">

					<tr>
						<%
						List<UserBean> list = (List<UserBean>) request.getAttribute("list");
						int index = 1;
						%>

						<th>S.No.</th>
						<th>FistName</th>
						<th>LastName</th>
						<th>Contact NO</th>
						<th>Email</th>
						<th>UserName</th>
						<th>PassWord</th>
						<th>Action</th>


					</tr>
				</thead>
				<tbody style="color: black; background-color: #dfd9d9;">
					<%
					for (UserBean ub : list) {
					%>
					<tr>
						<td><%=index++%></td>
						<td><%=ub.getFistName()%></td>
						<td><%=ub.getLastName()%></td>
						<td><%=ub.getPhoneNo()%></td>
						<td><%=ub.getEmail()%></td>
						<td><%=ub.getUsername()%></td>
						<td><%=ub.getPassword()%></td>


						<td style="text-align: center;"><a class=""
							href="/Online-Project-Submisssion/DeleteFacultyCtl?id=<%=ub.getId()%>"> <i
								class="fa fa-trash" style="font-size: 24px; color: white;"></i>
						</a>&nbsp; &nbsp; <a class="btn"
							href="/Online-Project-Submisssion/EditFacultyCtl?id=<%=ub.getId()%>"> <i
								class="fa fa-edit" style="font-size: 24px; color: white;"></i></a></td>

					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<br>

	</div>
	<br>

	<br>
</section>

	<div>
		<%@include file="Footer.jsp"%>

	</div>
</body>
</body>
</html>