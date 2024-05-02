<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <title>InnoSync</title>
    <style>
        body {
            margin: 0px;
        }

        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            transition: background 0.5s, padding 0.5s;
             z-index: 2;
        }

        header.scrolled {
            background: #343a40; /* Change to your desired background color */
            padding: 0px 0;
            /* Adjust to your desired padding */
        }

        .con {
            height: 900px;
            width: auto;
            background-image: url("image/header-bg1.jpg");
            text-align: center;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
         .btn-3d {
         margin-top:40px;
            display: inline-block;
            border: 2px solid #f1c40f;
            background-color: #f1c40f;
            color: #fff;
            padding: 15px 30px;
            text-align: center;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: bold;
            border-radius: 5px;
            position: relative;
            overflow: hidden;
            transition: background-color 0.3s, transform 0.3s;
            font-size: 20px;
        }

        .btn-3d::before {
            content: "";
            position: absolute;
            background: #f1c40f;
            width: 100%;
            height: 100%;
            top: 0;
            left: 100%;
            transition: left 0.3s;
            z-index: -1;
        }

        .btn-3d:hover {
            background-color: black;
            transform: scale(1.1);
        }

        .btn-3d:hover::before {
            left: 0;
        }

        h1 {
            
        }
    </style>
</head>
<body>
    <div style="margin: 0px;">
        <%@include file="/jsp/Header.jsp" %>
    </div>

    <div class="con">
        <div class="container" style="text-align: center;">
            <h1 style =" 
            margin-top:80px;
            font-size: 40px;
            line-height: 55px;
            margin-bottom: 25px;
            font-family: Montserrat;
            text-shadow: 0px 0px;">Welcome To INNOSYNC</h1>
            <span style ="font-size: 75px;
    font-weight: 700;
    line-height: 75px;
    margin-bottom: 50px;
    font-family:Montserrat;">It's Nice To Meet You</span><p></p>
            <h5>Empowering students and teachers to innovate and excel in their projects.</h5>
            <a href="#services" class="btn-3d">Scroll Down..</a>
        </div>
    </div>
    
    
    
    
    
    
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">Services</h2>
                    <h3 class="text-muted section-subheading">Our Services is provided to...</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4"><span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x " style="color: #fed136;"></i><i class="fa fa-user fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading">Faculty</h4>
                    <p class="text-muted">Easy interreaction to student. Easily see the project deatils of student, no hurdel and not  facing problem to submit project of student no aper requeried. All the data is save here any time check it. </p>
                </div>
                <div class="col-md-4"><span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x " style="color: #fed136;"></i><i class="fa fa-users fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading">Student</h4>
                    <p class="text-muted">Student are not required to go college for submitting project easily submit there project on this online platform any time which is given by faculty.  </p>
                </div>
                <div class="col-md-4"><span class="fa-stack fa-4x"><i class="fa fa-circle fa-stack-2x " style="color: #fed136;"></i><i class="fa fa-list-alt  fa-stack-1x fa-inverse"></i></span>
                    <h4 class="section-heading">Project Details</h4>
                    <p class="text-muted">Have the information or details of those team and student which is added by the faculty. faculty fetch that details.</p>
                </div>
            </div>
        </div>
        
        
        
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    

<div class="responsive-container-block outer-container">
  <div class="responsive-container-block inner-container">
    <p class="text-blk section-head-text">
      Meet Our Team Members
    </p>
    <p class="text-blk section-subhead-text">
       "The Faces Behind Our Success"
    </p>
    <div class="responsive-container-block">
      <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 team-card-container">
        <div class="team-card">
          <div class="img-wrapper">
           <div class="rounded-image">
        <img class="team-img" src="image/missy.jpg">
      </div>
          </div>
          <p class="text-blk name">
            Missy Dodiya
          </p>
          <p class="text-blk position">
          Front End Developer
          </p>
          <div class="social-media-links">
             <a href="http://www.twitter.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-twitter.svg">
            </a>
            <a href="http://www.facebook.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-fb.svg">
            </a>
            <a href=""https://www.instagram.com/raj_._patidar/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-insta.svg">
            </a>
            <a href="http://www.gmail.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-mail.svg">
            </a>
          </div>
        </div>
      </div>
      
      
      
      <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 team-card-container">
        <div class="team-card">
          <div class="img-wrapper">
           <div class="rounded-image">
        <img class="team-img" src="image/mohit.jpg">
      </div>
          </div>
          <p class="text-blk name">
          Mohit Khatore
          </p>
          <p class="text-blk position">
            Front End Developer
          </p>
          <div class="social-media-links">
            <a href="http://www.twitter.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-twitter.svg">
            </a>
            <a href="http://www.facebook.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-fb.svg">
            </a>
            <a href="http://www.instagram.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-insta.svg">
            </a>
            <a href="http://www.gmail.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-mail.svg">
            </a>
          </div>
        </div>
      </div>
      
      
      
      <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 team-card-container">
        <div class="team-card">
            <div class="rounded-image">
        <img class="team-img" src="image/prabal.jpg">
      </div>
          <p class="text-blk name">
            Prabal Tiwari
          </p>
          <p class="text-blk position">
           Back End Developer
          </p>
          <div class="social-media-links">
            <a href="http://www.twitter.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-twitter.svg">
            </a>
            <a href="http://www.facebook.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-fb.svg">
            </a>
            <a href="http://www.instagram.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-insta.svg">
            </a>
            <a href="http://www.gmail.com/" target="_blank">
              <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-mail.svg">
            </a>
          </div>
        </div>
      </div>
      <div class="responsive-cell-block wk-desk-3 wk-ipadp-3 wk-tab-6 wk-mobile-12 team-card-container">
  <div class="team-card">
    <div class="img-wrapper">
      <!-- Add a wrapping div for the circular shape here -->
      <div class="rounded-image">
        <img class="team-img" src="image/IMG_0184.JPG">
      </div>
    </div>
    <p class="text-blk name">
      Raj Patidar
    </p>
    <p class="text-blk position">
    Full Stack Developer 
    </p>
    <div class="social-media-links">
      <a href="http://www.twitter.com/rajpatidar/" target="_blank">
        <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-twitter.svg">
      </a>
      <a href="http://www.facebook.com/raj patidar/" target="_blank">
        <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-fb.svg">
      </a>
      <a href="https://www.instagram.com/raj_._patidar/" target="_blank">
        <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-insta.svg">
      </a>
      <a href="http://www.gmail.com/rajpatidar6264@gmail.com/" target="_blank">
        <img src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/gray-mail.svg">
      </a>
      
      
    </div>
  </div>
</div>

    </div>
  </div>
</div>




 
<section id="contact" style="height:600px; margin-top: 60px; background-image: url('/image/team.jpg'); background-image: url(image/img-map.jpg);
 " >
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center color-white">
                    <h2 class="text-uppercase section-heading" style="margin-top: 40px; color: white;font-weight: bolder;">Contact Us</h2>
                    <h3 class="text-muted section-subheading">Inno Sync Team will help you out</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form id="contactForm" name="contactForm">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3"><input class="form-control" type="text" id="name" placeholder="Your Name *" required="" style="height: 65px;"><small class="form-text text-danger flex-grow-1 lead"></small></div>
                                <div class="form-group mb-3"><input class="form-control" type="email" id="email" placeholder="Your Email *" required="" style="height: 65px;"><small class="form-text text-danger lead"></small></div>
                                <div class="form-group mb-3"><input class="form-control" type="tel" placeholder="Your Phone *" required="" style="height: 65px;"><small class="form-text text-danger lead"></small></div>
                            </div>
                            <div class="col-md-6" ">
                                <div class="form-group mb-3"><textarea   class="form-control" id="message" placeholder="Your messade *............ " required=""  style="height: 225px;"></textarea><small class="form-text text-danger lead"></small></div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div><button class="btn-3d" id="sendMessageButton" type="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


<section>
<div>
  <%@include file="/jsp/Footer.jsp" %>
</div>
</section>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const header = document.querySelector('header');

            window.addEventListener('scroll', function () {
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
