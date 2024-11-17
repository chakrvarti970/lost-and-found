<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<%@include file="../common/link.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12" style="padding: 0px;"> 
<%@include file="common/menu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>
<div class=col-sm-10>

<div class="row">

<div class="col-sm-3"></div>
<div class="col-sm-6 bg" style="background-color:cyan;padding-top:20px;padding-bottom:20px;margin-top:50px;">
<h1 class="text-center " style="margin-bottom:30px;">Send Email</h1>
<hr>
<form action="submitEmail.jsp" method="post">
<input type="email" name="receiver" placeholder="Enter reciver email address" class="form-control"/><br>
<input type="text" name="subject"placeholder="Enter email subject..." class="form-control"/><br>
<textarea name="content"placeholder="Type your email content here" rows="7" class="form-control"></textarea><br>
<center><input type="submit" value="Send Email" class="btn btn-lg btn-success"/></center>
</form>
</div>
<div class=col-sm-3"></div>
</div>

</div>
</div>
<div class="row">
<div class="col-sm-12"> 
<%@include file="common/footer.jsp" %>
</div>
</div>
</div>

</body>
</html>