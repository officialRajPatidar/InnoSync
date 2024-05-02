<%@page import="in.co.online.project.submission.bean.TeamBean"%>
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
    box-shadow: 0px 0px 0px;
}

th, td {
    border: 1px solid black;
    border-radius: 35px;
}

tbody {
    color: black;
    background-color: #e7e7e7;
    font-family: cursive;
    font-size: larger;
}

thead {
    color: black;
    background-color: #e7e7e7;
    font-family: cursive;
    font-size: larger;
}

section {
    margin: 5px;
    background-image: url("image/team2.jpg");
}

.three-d-effect {
    font-size: 50px;
    color: black;
    text-shadow: 1px 1px 1px #ccc, -6px -2px 2px #bbb;
    font-weight: bold;
    animation: shadow-animation 2s infinite alternate;
    color: #121110;
    font-family: 'Kaushan Script';
}

@keyframes shadow-animation { 
    0% {
        text-shadow: 1px 1px 1px #ccc, 2px 2px 2px #bbb;
    }
    100% {
        text-shadow: -1px -1px 1px #ccc, -2px -2px 2px #bbb;
    }
}

a {
    background: #fed136;
}
</style>
</head>
<body>
<div>
    <%@ include file="Header.jsp"%>
</div>
<section>
    <br>
    <%
    String err = (String) request.getAttribute("err");
    String success = (String) request.getAttribute("success");
    String error = (String) request.getAttribute("error");
    String suc = (String) request.getAttribute("succ");
    %>


    <div class="container">
        <%
        List<TeamBean> list = (List<TeamBean>) request.getAttribute("list");
        int index = 1;
        %>
        <h1 class="three-d-effect mt-4 mb-4 color-whiite">List of Team</h1>
        <div class="row">
            <%
            for (TeamBean tbean : list) {
                // Check if it's the last card in the row
                boolean isLastInRow = (index % 3 == 0);
            %>
            <div class="col-md-4">
                <div class="card mb-4<%=isLastInRow ? " custom-style" : ""%>">
                    <div class="card-body">
                        <h5 class="card-title">
                            <strong>Team Name:</strong>
                            <%=tbean.getTeamName()%></h5>
                        <p class="card-text">
                            <strong>Class Name:</strong>
                            <%=tbean.getClassName()%><br>
                            <strong>Guide Name:</strong>
                            <%=tbean.getTeamGuide()%><br>
                            <strong>Project Problem:</strong> <br>
                            <!-- Add more project details here -->
                        </p>
                        
                        <%
                        UserBean usbean = (UserBean) session.getAttribute("userbean");
                        if(usbean != null) {
                            if(usbean.getRoleId() == 2) { %>
                                <a class="btn" href="/Online-Project-Submisssion/DeleteTeamCtl?id=<%=tbean.getId()%>">
                                    <i class="fa fa-trash" style="font-size: 24px; color: black;"></i>
                                </a>&nbsp; &nbsp; 
                                <a class="btn" href="/Online-Project-Submisssion/EditTeam?id=<%=tbean.getId()%>">
                                    <i class="fa fa-edit" style="font-size: 24px; color: black;"></i>
                                </a> 
                                <a href="/Online-Project-Submisssion/AddStudentCtl?id=<%=tbean.getId()%>"
                                   class="btn btn-primary ml-4" style="background: #fed136;" target="_blank">Add Student</a>
                            <% }
                        } %>
                    </div>
                </div>
            </div>
            <%
            // Insert a new row after every 3 cards
            if (isLastInRow) { %>
                </div>
                <div class="row">
            <% }
            index++;
            }
            %>
        </div>
    </div>
</section>
<section>
    <div class="footer" >
        <%@include file="Footer.jsp"%>
    </div>
</section>
</body>
</html>
