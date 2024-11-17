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
<%@include file="common/menu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>
<div class="col-sm-10">
<div class="row">


<hr>
<div class="col-sm-3"></div>
<div class="col-sm-6" style="background-color:cyan; padding-top:20px;padding-bottom:20px;">
<h1 class="text-center " style="margin-bottom:40px;">Change Password</h1>
<hr>
  <form action="updatePass.jsp" method="post">
     <input type="password" name="cpass" placeholder="Enter current password" class="form-control">
     <br>
      <input type="password" name="newpass" placeholder="Enter new password" class="form-control">
     <br>
      <input type="password" name="confpass" placeholder="Enter confirm password" class="form-control">
     <br>
     <input type="submit" value="Update Password" class="btn btn-lg btn-success">
  </form>
</div>
<div class="col-sm-3"></div>
</div>

<div class="col-sm-3"></div>
<div class="col-sm-6"></div>
<from action="feedback.jsp">


</from>
</div>
<div class="col-sm-3"></div>
</div>
<div class="row">
<div class="col-sm-12"> 
<%@include file="common/footer.jsp" %>
</div>
</div>
</div>
</body>
</html>