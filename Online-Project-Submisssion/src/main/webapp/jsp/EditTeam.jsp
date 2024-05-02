<%@page import="in.co.online.project.submission.bean.TeamBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<title>UpdateTeam</title>
    <style>
    section{margin: 6px;
    height: 650px;
    }
        .container {
	margin: 0 auto;
	padding: 10px;
	background-color: #fff;
	border-radius: 8px;
	    box-shadow: 1px 0px 70px #c3c5c0;
	border-bottom: 5px solid #343a40 !important;
	margin-top: 20px;
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
<%  
 
 
%>
    <div class="container" style="width: 450px; ">
        <h2><i class="fa fa-edit" style="font-size:48px;color:black; text-align: center;">
      <br>  Edit Team</i></h2>
      
      <% TeamBean teambean = (TeamBean)request.getAttribute("bean"); %>
        <form action="EditTeam" method="post">
        
        				        <input class="id" size="50" type ="hidden" name="id" value="<%=teambean.getId()%>"><br><br>
        
            <label for="teamName">Team Name:</label>
            <input type="text" id="teamName" name="teamName" placeholder="Team Name" value="<%=teambean.getTeamName() %>" required>
            
              <label for="teamGuide">Class Name:</label>
            <input type="text" id="teamGuide" name="className" placeholder="Team Guide" value="<%=teambean.getClassName() %>" required>
            

            <label for="teamGuide">Team Guide:</label>
            <input type="text" id="teamGuide" name="teamGuide" placeholder="Team Guide" value="<%=teambean.getTeamGuide()%>" required>

           
           

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
