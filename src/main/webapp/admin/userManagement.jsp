<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="common.Dbmanager" %>
        <%@page import="java.sql.ResultSet" %>
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
<h4 class="text-center text-primary">User's Details	</h4>
<hr/>
<table class="table table-stripped">
<tr>
<th>sno</th><th>Name</th><th>Picture</th><th>Gender</th><th>Mobile No</th><th>Email Id</th><th>Address</th><th>DOB</th><th>Send Email</th>

<% 
int sno=1;
String cmd="Select * from registration";
Dbmanager dm=new Dbmanager();
ResultSet rs=dm.dql(cmd);
while(rs.next())
{
out.print("<tr><td>"+sno+"</td><td>"+rs.getString("name")+"</td><td><img width='60px' height='60px' src='../"+rs.getString("picture")+"'/></td><td>"+rs.getString("gender")+"</td><td>"+rs.getString("mobno")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("dob")+"</td><td class='text-center'><a href='sendEmail.jsp' class='fa-solid fa-envelope h4' style='text-decoration:none;'></a></td></tr>");	
sno++;


}

%>


<tr>

</table>
</div>
</div>


<div class="row">
<div class="col-sm-12"> 
<%@include file="common/footer.jsp" %>


</body>
</html>