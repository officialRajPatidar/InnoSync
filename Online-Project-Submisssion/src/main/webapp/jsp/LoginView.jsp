<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.containerr {
           
            margin: 0 auto;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            
            
            
       
 
  border: 2px solid #0001;
  position: relative;
  animation: borderAnimation 3s infinite linear;
  <%--animation-iteration-count: 2;--%>
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
 input:focus {
  border: 2px solid #007bff; /* Change to your desired border color and style */
  transition: border 0.3s ease; /* Smooth border transition effect */
}
 
}
        
</style>
<title>Login_page</title>
</head>
<body>
<div>
<%@include file="Header.jsp" %>
</div>
<% String error =(String) request.getAttribute("error"); 
String email = (String) request.getAttribute("email");
String pass = (String) request.getAttribute("pass");

%>

<section class="vh-87 m-1" style="background-color: #454242">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">
<div class="containerr">
                <form method="Post" action="/Online-Project-Submisssion/LoginCtl" >

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-user-group"></i></i>
                    
                    <span class="h1 fw-bold mb-0"><br>Inno_Sync</span>
                  </div>
                   
                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
                   <font style="color: red"><%=(error!=null)?error:"" %></font>
                  <div class="form-outline mb-4">
               <input name="email" type="email" id="form2Example17" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Email address</label>
                    <font style="color: red;"><%=(email!=null)?email:"" %></font>
                  </div>

                  <div class="form-outline mb-4">
                    <input name="pass" type="password" id="form2Example27" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example27">Password</label>
                     <font style="color: red;"><%=(pass!=null)?pass:"" %></font>
                    
                  </div>

                  <div class="pt-1 mb-4">
                    <input class="btn btn-dark btn-lg btn-block"  style="box-shadow: -4px -8px #999;" type="submit" value="SignIn">
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
</section>
<section>
<div>
<%@include file="Footer.jsp" %>
</div>
</section>
</body>
</html>