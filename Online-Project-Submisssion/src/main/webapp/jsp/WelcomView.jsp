<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Project Submission</title>
    <style>
     .con {
            height: 900px;
            width: auto;
            background-image: url("image/team.jpg");
            text-align: center;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        

        h1 {
            font-size: 36px;
            margin: 0;
            text-align: center;
           
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        p {
            font-size: 18px;
            line-height: 1.6;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%
		UserBean ubean = (UserBean) session.getAttribute("userbean");
		%>
		
		
		
		
<div>
<%@include file="Header.jsp" %>
</div>
      <%
						if (ubean != null) {
						%>
						<%
						if (ubean.getRoleId() == 1) {
						%>
    <div class="con">
        <div class="containerr" style="text-align: center;">
            <h1 style =" 
            margin-top:0px;
            font-size: 40px;
            line-height: 55px;
            margin-bottom: 25px;
            font-family: Montserrat;
            text-shadow: 0px 0px;">Welcome Admin...!</h1>
            <span style ="font-size: 75px;
    font-weight: 700;
    line-height: 75px;
    margin-bottom: 50px;
    font-family:Montserrat;">It's Nice To Meet You</span><p></p>
            <h5>Empowering students and teachers to innovate and excel in their projects.</h5>
           
        </div>
    </div>
    
    
    <% }else if(ubean.getRoleId() == 2) {
	%>
<div class="con">
<div class="containerr" style="text-align: center;">
<h1 style =" 
margin-top:0px;
font-size: 40px;
line-height: 55px;
margin-bottom: 25px;
font-family: Montserrat;
text-shadow: 0px 0px;">Welcome Faculty...!</h1>
<span style ="font-size: 75px;
font-weight: 700;
line-height: 75px;
margin-bottom: 50px;
font-family:Montserrat;">It's Nice To Meet You</span><p></p>
<h5>Empowering students and teachers to innovate and excel in their projects.</h5>

</div>
</div>


<%}
						if (ubean.getRoleId() == 3) {
						%>
    <div class="con">
        <div class="containerr" style="text-align: center;">
            <h1 style =" 
            margin-top:0px;
            font-size: 40px;
            line-height: 55px;
            margin-bottom: 25px;
            font-family: Montserrat;
            text-shadow: 0px 0px;">Welcome Student...!</h1>
            <span style ="font-size: 75px;
    font-weight: 700;
    line-height: 75px;
    margin-bottom: 50px;
    font-family:Montserrat;">It's Nice To Meet You</span><p></p>
            <h5>Empowering students and teachers to innovate and excel in their projects.</h5>
           
        </div>
    </div>
    
    
    <%}}else{} %>
    
    

    
    
    
    
    <section>
    <div>
    <%@include file="Footer.jsp" %>
    </div>
    </section>
</body>
</html>
