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

<div class="col-sm-10 "style="background-color:#64dae2c2;padding-top:25px;padding-bottom:25px;"> 

<div class="row">
<div class="col-sm-4">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="LostFound.jsp" class="fa-solid fa-person-circle-plus" style="font-size:100px;text-decoration:none;">
</a><br/>


<span style="font-size:20px;">Post Lost&Found  </span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="searchLost.jsp" class="fa-solid fa-magnifying-glass" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Search Lost Material</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="feedback.jsp" class="fa-regular fa-comment-dots" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Feedback</span></div>
<div class="col-sm-1">
</div></div>
</div>
<br>



<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="giveReward.jsp" class="fa-solid fa-award" style="font-size:100px;text-decoration:none;">
</a><br/>


<span style="font-size:20px;">Rewards</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="myUpload.jsp" class="fa-solid fa-arrow-up-from-bracket fa-beat-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">My Uploads</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="MyProfile.jsp" class="fa-solid fa-user fa-beat-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">My Profile</span></div>

<div class="col-sm-1">
</div>
</div>
</div>




<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="changePassword.jsp" class="fa-solid fa-lock fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>


<span style="font-size:20px;">Change Password</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="userDash.jsp" class="fa-solid fa-house fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;"> Home</span></div>
<div class="col-sm-1">
</div></div>
</div>
<div class="col-sm-4" style="margin-top:40px;">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-9 text-center" style="background-color:antiquewhite;padding-top:10px;padding-bottom:10px;">
<a href="logout.jsp" class="fa-solid fa-right-from-bracket fa-fade" style="font-size:100px;text-decoration:none;">
</a><br/>
<span style="font-size:20px;">Logout</span></div>

<div class="col-sm-1">
</div>
</div>
</div>

</div>
</div>
</div>

<%@include file="common/footer.jsp" %>

</body>
</html>