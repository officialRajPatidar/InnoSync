<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
    crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;display=swap">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Add these links to your HTML -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <title>Project Submission Form</title>
    <style>
      .center-container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
      }
      .form-container {
        width: 600px;
        padding: 20px;
        border: 1px solid black; /* Red border */
        border-radius: 5px;
        background-color: #fff;
        box-shadow: -2px -2px 10px 23px rgba(0, 0, 0, 0.2);
}
      }
      .form-container label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
      }
      .form-container input[type="text"],
      .form-container textarea,
      .form-container input[type="file"],
      .form-container input[type="url"] {
        width: 100%;
        padding: 10px;
        border: 1px solid black; /* Red border */
        border-radius: 5px;
      }
      .form-container input[type="submit"] {
        width: 160px;
        margin-top:20px;
        margin-left:25vh;
        padding: 10px;
        background-color:  #fed136;/* Red background */
        border: none;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
      }
      h2{
             font-size: -webkit-xxx-large;
    transition: all .3s;
    color: #fed136;
    font-family: "Kaushan Script", "Helvetica Neue", Helvetica, Arial, cursive;
    text-align: center;
    padding: 20px;
    text-shadow: 4px -1px 2px black;
        
      }
    </style>
</head>
<body>
<div>
<%@ include file="/jsp/Header.jsp" %>
</div>
<% 
String suc = (String)request.getAttribute("success");
String err= (String)request.getAttribute("err");
%>
 <h2 style="    font-size: -webkit-xxx-large;">Project Submission Form</h2>
<div class="center-container">

    <div class="form-container">
       
        <font style="color: green; text-align: center;"><%=(suc!=null)?suc:"" %></font>
        <font><%=(err!=null)?err:"" %></font>
        
        <form action="SubmitProjectCtl" method="post" enctype="multipart/form-data">
            <label for="teamName">Team Name:</label>
            <input type="text" id="teamName" name="teamName" required>

            <label for="guideName">Guide Name:</label>
            <input type="text" id="guideName" name="guideName" required>

            <label for="projectName">Project Name:</label>
            <input type="text" id="projectName" name="projectName" required>

            <label for="projectDescription">Project Problem or Description:</label>
            <textarea id="projectDescription" name="projectDescription" rows="4" required></textarea>

            <label for="projectPPT">Project PPT (PDF or PPTX):</label>
            <input type="file" id="projectPPT" name="projectPPT" accept=".pdf, .pptx" required>

            <label for="githubURL">GitHub Repository URL:</label>
            <input type="url" id="githubURL" name="githubURL" required>

            <input type="submit" value="Submit">
        </form>
    </div>
</div>

<div>
<%@ include file="/jsp/Footer.jsp" %>
</div>
</body>
</html>
