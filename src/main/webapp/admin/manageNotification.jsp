<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="common.Dbmanager" %>
    
<!DOCTYPE html>
<html>
<head>
<%@include file="../common/link.jsp" %>
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12" style="padding:0px;">
<%@include file="common/menu.jsp"%>
</div>
</div>
<div class="row">
<%@include file="common/sidebar.jsp" %> 
<div class="col-sm-10" style="margin-top:20px;margin-bottom:20px;">
<div class="row">



<div class="col-sm-3"></div>
<div class="col-sm-6" style="background-color:cyan; padding-top:20px;padding-bottom:20px;margin-top:40px;">
<h1 class="text-center " style="margin-bottom:30px;">Manage Notification</h1>
  <form action="saveNotification.jsp" method="post">
     <textarea name="NotificationMsg"
     placeholder="Type Notification Message here" class="form-control" rows="4"></textarea>
     <br>
     <input type="submit" value="Add Notification" 
     class="btn btn-lg btn-success">
  </form>
</div>
<div class="col-sm-3"></div>
</div>
<div class="row">
  <div class="col-sm-1"></div>
  <div class="col-sm-10">
   <table class="table table-primary">
   <tr>
   <br>
   <th>Sno</th>
   <th>NID</th><th>Notification Bar</th><th>Added on</th>
   <th>Delete</th>
   </tr>
   <% String cmd="select * from notification order by nid desc limit 5";
   Dbmanager dm=new Dbmanager();
   ResultSet rs=dm.dql(cmd);
   int n=1;
   while(rs.next())
   {
	   out.print("<tr><td>"+n+"</td><td>"+rs.getString("nid")+"</td><td>"+rs.getString("message")+"</td><td>"+rs.getString("dt")+"</td><td class='text-center'><a href='deleteNoti.jsp?nid="+rs.getString("nid")+"' class='fa-solid fa-trash-can text-danger' title='Remove'></a></td></tr>");
	   n++;
	   
   }
   %>
   </table>
  </div>
   <div class="col-sm-1"></div>
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