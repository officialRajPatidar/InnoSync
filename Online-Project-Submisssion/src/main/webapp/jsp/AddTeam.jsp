<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<title>Addteam</title>
    <style>
    section{margin: 6px;
    height: 650px;
    
	
	background-image: url("image/prject.jpg");
}
    
        .container {
	margin: 0 auto;
	padding: 10px;
	background-color: #fff;
	border-radius: 8px;
	    box-shadow: 1px 0px 70px #c3c5c0;
	border-bottom: 5px solid #343a40 !important;
	margin-top: 120px;
	margin-bottom: 10px;
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
margin-top:10px;
	font: caption;
	font-size: large;
}
h2{

text-align: center;
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
<% UserBean userbean = (UserBean)session.getAttribute("userbean"); 
 String err =(String) request.getAttribute("err");
 String success = (String)request.getAttribute("success");
 
%>
    <div class="container" style="width: 450px; ">
        <h2><i class="fa fa-edit" style="font-size:48px;color:black; text-align: center;">
      <br>  Add Team</i></h2>
      <font style="color:green;  ">&nbsp;&nbsp;<%=(success!=null)?success:"" %></font>
            <font style="color: red;"><%=(err!=null)?err:"" %></font>
      
        <form action="AddTeamCtl" method="post">
            <label for="teamName">Team Name:</label>
            <input type="text" id="teamName" name="teamName" placeholder="Team Name" required>
            
              <label for="teamGuide">Class Name:</label>
            <input type="text" id="teamGuide" name="className" placeholder="Team Guide" required>
            

            <label for="teamGuide">Team Guide:</label>
            <input type="text" id="teamGuide" name="teamGuide" placeholder="Team Guide" required>

           
           

            <div class="button-container mt-3">
                
                <input type="submit" class="" value="Add">
            </div>
        </form>
    </div>
    </section>
    <div>
    <%@include file="Footer.jsp" %>
    </div>
</body>
</html>
