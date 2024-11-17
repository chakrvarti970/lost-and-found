<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../common/link.jsp" %>

</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12" style="padding: 0px;"> 
<%@include file="./common/menu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>

<div class="col-sm-10"style="background-color:#64dae2c2;padding-top:25px;padding-bottom:25px;"> 

<div class="row">
<div class="col-sm-4">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="userManagement.jsp" class="fa-solid fa-users-line" style="font-size:100px;text-decoration:none;">
</a><br/>


<span style="font-size:20px;">User Management  </span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="manageNotification.jsp" class="fa-solid fa-bell fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Event Management</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="enquiry.jsp" class="fa-solid fa-list-check" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Enquiery Management</span></div>
<div class="col-sm-1">
</div></div>
</div>




<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="feedbackManagement.jsp" class="fa-solid fa-comment-dots fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>


<span style="font-size:20px;">Feedback Management</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="viewLostFoundMaterial.jsp" class="fa-solid fa-person-circle-exclamation fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">View Lost & Found Material</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="changePassword.jsp" class="fa-solid fa-lock" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Change Password</span></div>

<div class="col-sm-1">
</div>
</div>
</div>





<div class="col-sm-4" style="margin-top:40px; border-radius:10px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="giveReward.jsp" class="fa-solid fa-award fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>


<span style="font-size:20px;">Rewards</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="sendEmail.jsp" class="fa-solid fa-envelope fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Send Email</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="logout.jsp" class="fa-solid fa-right-to-bracket fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Logout</span></div>

<div class="col-sm-1">
</div>
</div>
</div>
</div>
</div>
</div>


<div class="row">
<div class="col-sm-12"> 
<%@include file="common/footer.jsp" %>

</body>
</html>