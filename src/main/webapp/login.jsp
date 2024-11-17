<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="common/link.jsp" %>

</head>
<body >
<div class="container-fluid">
<%@include file="common/header.jsp" %>
<%@include file="./common/menu.jsp" %>
<hr>

<div class="row" style="background-image:url('./assets/images/login.jpg')">
<div class="col-sm-4"></div>

<div class="col-sm-4   mt-5 mb-5" style="text-align:justify;">

<div style="background-color:cyan;border-radius:10px;" class="card" >

<h1 class="text-center ">Login Here</h1>
  <div class="card-body">
  
    <form action="validateUser.jsp" method="post" style="padding-left:40px;padding-right:40px;padding-top:30px;padding-bottom:30px;">
    <div class="mb-3"> 
  <select class="form-select" id="Utype"name="utype" >
  <option  value="">Choose</option>
  <option value="user">User</option>
  <option value="admin">Admin</option>
  
</select>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control"  aria-describedby="emailHelp" id="temail">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="password" class="form-control" id="tpass">
  </div>
  
  <div class="" align="center">
  <button  id="btnlogin"type="submit" class="btn btn-primary mt-4" style="min-width:150px">Login</button>
  </div>
    <hr>
    <center>
    <div >
     <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;"
              type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
              </br>
              </br>
            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;"
              type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>
    </div>
    <center>
</form>
  </div>
</div>
</div>
<div class="col-sm-4"></div>
</div>
</div>






<%@include file="common/footer.jsp" %>


</body>
</html>
<script>
$(document).ready(function(){
	
	
	$("#btnlogin").click(function(){
		
		var email,pass,type,res=true;
		email=$("#temail").val().trim();
		pass=$("#tpass").val().trim();
		type=$("#Utype").val().trim();
		//clear all old errors
		$(".err").remove();
		// Validate email
		if(email.length==0)
		{
		$("#temail").after("<span class='err'>Please enter your email id</span>");
		res=false;
		
		
		}
	
		
		//validate password
		if(pass.length==0)
			{
			$("#tpass").after("<span class='err'>Please enter your password</span>");
			res=false;
			
			
			}
		//validate usertype
		if(type.length==0)
		{
		$("#Utype").after("<span class='err'>Please select the user type</span>");
		res=false;
		
		
		}
return res;

		
	});
});

</script>

<style>
.err{
color:red;

}
</style>