<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="common.Dbmanager" %>
    <%@ page import="java.sql.ResultSet" %>
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
<div class="col-sm-10" style="margin-top:20px;margin-bottom:20px;
padding-top:20px; padding-bottom:20px;">
<table class="table table-primary">
<center><h4> Feedback of users</h4></center>
<hr>
<tr>
<th>Sno</th>
<th>Feedback By</th>
<th>Title</th>
<th>Feedback Message</th>
<th>Date & Time</th>
</tr>
<%
String cmd="Select r.name,f.title,f.message,f.dt from feedback f,registration r where f.userid=r.email order by feedbackid desc";
Dbmanager dm=new  Dbmanager();
ResultSet rs=dm.dql(cmd);
int n=1;
while(rs.next())
{
out.print("<tr><td>"+n+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("title")+"</td><td>"+rs.getString("message")+"</td><td>"+rs.getString("dt")+"</td></tr>");
n++;

}

%>

</div>
</table>
</div>
</div>

<div class="row">
<div class="col-sm-12"> 
<%@include file="common/footer.jsp" %>


</body>
</html>