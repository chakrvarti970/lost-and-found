<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="common.Dbmanager" %>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="common/link.jsp" %>
<style>
.a1{
font-size:30px;
}
</style>
</head>
<body>
<div class="container-fluid">
<%@include file="common/header.jsp" %>
<%@include file="./common/menu.jsp" %>


<div class="col-sm-12" style="background-color:#a8cece;padding-top:5px;min-height:40px;">
<marquee direction="left" onmouseover="stop()"
onmouseout="start()">
<% 
 String cmd="Select * from notification order by nid desc limit 4";
 Dbmanager dm=new Dbmanager();
 ResultSet rs=dm.dql(cmd);
 int n=1;
 while(rs.next())
 {
	 out.print("<i class='fa-solid fa-circle text-warning'></i><span style='margin-right:15px;margin-left:5px;font-size:15px;'>"+rs.getString("message"));
	 if(n==1)
		 out.print("<img src='assets/images/newgif.gif' width='45px' height='30px'/></span>");
	 
	 else
		 out.print("</span>");
	 n++;
	 
 }
 
 
 %>
 </marquee>
 </div>
 </div>
 </div>
 
<%@include file="/common/slider.jsp" %>



<section id="about" style="">
        <div class="container">

            <header class="section-header">
                <u style="color:blue"><center><h3>About Us</h3></center></u>
                <p style="text-align: justify;"> This service operated by @kuldeep Yadav .which is pursuing B.tech(CSE) from AKTU University Lucknow.Lost and Found Project" aims to inspire, connect, and empower individuals by providing a platform for the expression of personal experiences and the exploration of diverse journeys.

By sharing stories of triumph over adversity, loss, and unexpected challenges,            

             this project seeks to foster empathy, understanding, and a sense of unity among people from different backgrounds and walks of life.

Ultimately, the "Lost and Found Project" is a testament to the enduring human spirit and the belief that even in the face of life's most daunting trials, there is hope, growth, and the potential for profound personal discovery.
                </p>

                
            </header>

            <div class="row about-cols" >
 <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="card">
                        <div class="img">
                            <img src="assets/images/v3.jpg" alt="" class="card-img-top" style="height:270px">
                            <div class="icon"><i class="ion-ios-list-outline"></i></div>
                        </div>
                        <center>
                        <h2 class="title"><a href="#">Our Vision</a></h2></center>
                        <p style="text-align:justify;margin-left:20px;margin-right:20px;margin-bottom:20px;"class="text-justify">The vision of the "Lost and Found Project" is to become a global catalyst for empowerment and inspiration through the art of storytelling.

We aspire to create a vast repository of stories that not only entertain but also serve as a wellspring of wisdom for individuals facing life's challenges.

Our vision is to build a community where people from all walks of life can share their experiences and learn from one another's journeys.

We aim to harness the power of technology and multimedia to make these stories accessible to a worldwide audience.


</p>
                    </div>
                </div>
               
                <div class="col-md-4 wow fadeInUp">
                    <div class="card">
                        <div class="img">
                            <img src="assets/images/m2.jpg" alt="" class="card-img-top"style="height:270px"border-radius:5px;>
                            <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                        </div>
                        <center>
                        <h2 class="title"><a href="#">Our Mission</a></h2></center>
                        <p style="text-align:justify;margin-left:20px;margin-right:20px;margin-bottom:20px;"class="text-justify ">The mission of the "Lost and Found Project" is to uncover and share compelling stories of personal resilience, growth, and transformation.

We strive to create a platform that inspires individuals facing challenges and setbacks by showcasing stories of those who have successfully navigated through difficult times.

Our mission is to shed light on the human capacity to adapt, learn, and overcome adversity, emphasizing the power of hope and determination.

We aim to provide a supportive and inclusive space.

                        . </p>
                    </div>
                </div>
               
               
               
               <div class="col-md-4 wow fadeInUp">
                    <div class="card">
                        <div class="img">
                            <img src="assets/images/w7.jpg" alt="" class="card-img-top"style="height:270px"border-radius:5px;>
                            <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                        </div>
                        <center>
                        <h2 class="title"><a href="#">Our Work</a></h2></center>
                        <p style="text-align:justify;margin-left:20px;margin-right:20px;margin-bottom:20px;"class="text-justify ">This type of project can be implemented in various settings, such as schools, businesses, public transportation, or even online platforms. Here are the key components and tasks involved in running a Lost and Found project
                        .Identify a physical location or create an online platform where lost items can be reported and found items can be listed. This could be a designated room, a website, or a mobile app.
                        Set up a system for individuals to report their lost items. This can include filling out forms, providing.We strive to create a platform.
                        . </p>
                    </div>
                </div>
               
            </div>

        </div>
    </section>

<br>
<br>

<div style="border:1px solid white;margin-top:20px;">
<section id="service">
        <div class="container">

            <header class="section-header">
                <u style="color:blue;"><center><h3>Our Services</h3></center></u>
                <p style="text-align: justify;"> The Lost and Found project offers a centralized platform for individuals to report and search for lost items, streamlining the process of reuniting owners with their belongings.

We provide a user-friendly website and mobile app that allows users to submit detailed descriptions of their lost items, including photos and relevant information.

Our dedicated team of volunteers and staff members actively monitor and manage the platform to help facilitate the recovery of lost items.                </p>

                
            </header>

            <div class="row about-cols">
 <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div style="margin-bottom:10px;"class="card">
                        <div class="img">
                            <img src="assets/images/sdn1.jpg" alt="" class="card-img-top" style="height:270px">
                            <div class="icon"><i class="ion-ios-list-outline"></i></div>
                        </div>
                        <center>
                        <h2 class="title"><a href="#">Lost Product Report</a></h2></center>
                        <p style="text-align:justify;margin-left:20px;margin-right:20px;margin-bottom:20px;"class="text-justify">The "Lost and Found Project" is to become a global catalyst for empowerment and inspiration through the art of storytelling. the lost and found.

We aspire to create a vast repository of stories that not only entertain but also serve as a wellspring of wisdom for individuals facing life's challenges.

Our vision is to build a community where people from all walks of life can share their experiences and learn from one another's journeys.

We aim to harness the power of technology and multimedia to make these stories accessible to a worldwide audience.


</p>
                    </div>
                </div>
               
                <div class="col-md-4 wow fadeInUp">
                    <div style="margin-bottom:10px;" class="card">
                        <div class="img">
                            <img src="assets/images/sdn2.jpg" alt="" class="card-img-top"style="height:270px">
                            <div class="icon"></div>
                        </div>
                        <center>
                        <h2 class="title"><a href="#">Product Detail</a></h2></center>
                        <p style="text-align:justify;margin-left:20px;margin-right:20px;margin-bottom:20px;"class="text-justify"> The "Lost and Found Project" is to uncover and share compelling stories of personal resilience, growth, and transformation.

We strive to create a platform that inspires individuals facing challenges and setbacks by showcasing stories of those who have successfully navigated through difficult times lost and project.

Our mission is to shed light on the human capacity to adapt, learn, and overcome adversity, emphasizing the power of hope and determination.

We aim to provide a supportive and inclusive space.

                        . </p>
                    </div>
                </div>
                <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div style="margin-bottom:10px;"class="card">
                        <div class="img">
                            <img src="assets/images/sdn3.jpg" alt="" class="card-img-top" style="height:270px;">
                            <div class="icon"><i class="ion-ios-list-outline"></i></div>
                        </div>
                        <center>
                        <h2 class="title"><a href="#">Product Enquiry</a></h2></center>
                        <p style="text-align:justify;margin-left:20px;margin-right:20px;margin-bottom:20px;"class="text-justify">Lost and Found Project: Work Edition" aims to explore the intricate journeys of individuals who have experienced career transitions, setbacks, or unexpected opportunities.

Through this project, we will delve into the stories of those who have lost their jobs and successfully navigated the challenges of unemployment to find new, fulfilling employment.

We will highlight the resilience and determination of workers who have overcome adversity in their professional lives, sharing their experiences as a source of inspiration for others.


</p>
                    </div>
                </div>
                
                
                
                                
                
                
                

            
            
            </div>
            </div>
           

        
    </section>
    
<%@include file="common/footer.jsp" %>

</body>
</html>