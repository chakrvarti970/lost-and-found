<%@page import="common.Dbmanager" %>
<%@page import="java.sql.ResultSet" %>

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
<div class="col-sm-10">
<% 
String cmd="select * from registration where email='"+session.getAttribute("uemail")+"'";
Dbmanager dm= new Dbmanager();
ResultSet rs=dm.dql(cmd);
String name="",mobno="",uid="",gender="",dob="",address="",dt="",picture="";
if(rs.next())
{
name=rs.getString("name");	
mobno=rs.getString("mobno");
uid=rs.getString("email");
gender=rs.getString("gender");

dob=rs.getString("dob");
address=rs.getString("address");
dt=rs.getString("dt");
picture=rs.getString("picture");
}
%>
<center>
<div style="border:2px solid black;margin-left:350px;margin-right:350px;margin-top:20px;padding-left:10px; border-radius:5px;background:cyan;" >
<div class="col-sm-10">


</div>
<div class="col-sm-12 mt-2" style="background-color:cyan">
<h1 class="text-center ">My Profile</h1>
<hr>
<form action="saveProfile.jsp" method="post" enctype="multipart/form-data">
<div class="row">
<div class="col-sm-8">
<div class="mb-3 row">
    <label for="Email" class="col-sm-2 col-form-label">Email</label>
    
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail" name="email"value="<%=uid %>">
    </div>
  </div>
  <div class="mb-3 row">
    <label for="name" class="col-sm-2 col-form-label">name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputName" name="name"value="<%=name %>">
    </div>
  </div>
  <div class="mb-3 row">
    <label for="name" class="col-sm-2 col-form-label">gender</label>
    <%if(gender.toUpperCase().trim().equals("male") ) { %>
    <div class="col-sm-10 ">
    <span class="form-control">
      <input type="radio"  id="inputRadio" name="gender"class= >Female &ensp;&ensp;
       <input type="radio"  id="inputRadio" name="gender" checked="checked">Male </span>
    </div>
    
    <% 
    }
    else{
    
    
    }
    %>
    <div class="col-sm-10 ">
    <span class="form-control">
      <input type="radio"  id="inputRadio" name="gender"checked="checked"class= >Female &ensp;&ensp;
       <input type="radio"  id="inputRadio" name="gender" checked="checked">Male </span>
    </div>
  </div>
  
  <div class="mb-3 row">
    <label for="dob" class="col-sm-2 col-form-label">DOB</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="inputName" name="dob" value="<%=dob %>">
    </div>
  </div>
  <div class="mb-3 row">
    <label for="contact no." class="col-sm-2 col-form-label">Contact no </label>
    <div class="col-sm-10">
      <input type="text" name="mobno"class="form-control" id="inputName" value="<%=mobno%>">
    </div>
  </div>
  <div class="mb-3 row">
    <label for=" address" class="col-sm-2 col-form-label"> Address </label>
    <div class="col-sm-10">
      <textarea class="form-control" name="address"><%=address%></textarea>   </div>
  </div>
  
<p class="h6 text-center text-success"> you joined Lost & Found community on<%=dt %><p>
  <input type="submit" value="UpdateProfile" class="btn-btn primary mb-3">
</div>
<div class="col-sm-4">
<img src="../<%=picture %>" style="height:90px;width:90px;" class="mt-4"/>
<br>
<span class="text-primary">change profile picture:</span>
<input class="form-control" type="file" name=""/>
</div>
</div>

</form>
</div>



</div>




</div>

</div>
</center>

<div class="row">
<div class="col-sm-1"> </div>
</div>

<%@include file="common/footer.jsp" %>


</body>
</html>