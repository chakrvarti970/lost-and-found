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
<h3 class="text-center text-danger">My Uploads</h3><hr/>

<table class="table table-stripped">
<tr>
<th> Sno</th><th> name</th><th> userid</th><th> posttype</th><th> category</th><th> address</th><th> pincode</th><th> description</th><th> lfdate</th>
<th> goodspic</th><th> Posted On</th><th>Give Reward </th>
</tr>
<% 
String  cmd="select  lf.lfid,r.name,lf.userid,lf.posttype,lf.category,lf.address,lf.pincode,lf.description,lf.lfdate,lf.goodspic,lf.dt from registration r,lostfound lf where r.email=lf.userid and  r.email='"+session.getAttribute("uemail")+"'order by lf.lfid desc";
Dbmanager dm=new Dbmanager();
ResultSet rs=dm.dql(cmd);
int n=1;
while(rs.next())
{
out.print("<tr><td>"+n+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("userid")+"</td><td>"+rs.getString("posttype")+"</td><td>"+rs.getString("category")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("pincode")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("lfdate")+"</td><td><img src='../"+rs.getString("goodspic")+"'width='70px' height='75px'/></td><td>"+rs.getString("dt")+"</td><td class='text-center'><a class='fa-solid fa-trophy h3 text-warning'style='text-decoration:none;margin-top:12px;' href='giveReward.jsp?id="+rs.getString("lfid")+"'></a></tr>");

n++;





}
%>
</table>



</div>

</div>


<%@include file="common/footer.jsp" %>


</body>
</html>