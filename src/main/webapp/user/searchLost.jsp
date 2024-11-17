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
<div class="col-sm-10">
<div class="row">
<h1 class="text-center text-primary mb-3"> Search Lost Material</h1>
<form action="searchLost.jsp" method="post">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-8 bg-success">
<input class="form-control" type="search" placeholder="type something to search " 
area-label="search" name="SearchValue">
</div>


    
    
    
    <div class="col-sm-2">
    <button class="btn btn-primary" style="color:white;" type="submit">Search</button>
    </div>
    <div class="col-sm-1"></div>
    </div>
    </form>
    <table class="table table-stripped">
<tr>
<th> Sno</th><th> name</th><th> userid</th><th> posttype</th><th> category</th><th> address</th><th> pincode</th><th> description</th><th> lfdate</th>
<th> goodspic</th><th> Posted On</th>
</tr>
<% 
String cmd;
  cmd ="select  r.name,lf.userid,lf.posttype,lf.category,lf.address,lf.pincode,lf.description,lf.lfdate,lf.goodspic,lf.dt from registration r,lostfound lf where r.email=lf.userid order by lf.lfid desc";
if(request.getParameter("SearchValue")!=null)
{
	String sv=request.getParameter("SearchValue");
	if(sv.trim().length()>0)
	{
		cmd="select  r.name,lf.userid,lf.posttype,lf.category,lf.address,lf.pincode,lf.description,lf.lfdate,lf.goodspic,lf.dt from registration r,lostfound lf where r.email=lf.userid and(r.name like '%"+sv+"%' or lf.posttype like '%"+sv+"%' or lf.category like'%"+sv+"%' or lf.address like'%"+sv+"%' or lf.pincode like'%"+sv+"%')order by lf.lfid desc";
	}
}
Dbmanager dm=new Dbmanager();
ResultSet rs=dm.dql(cmd);
int n=1;
while(rs.next())
{
out.print("<tr><td>"+n+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("userid")+"</td><td>"+rs.getString("posttype")+"</td><td>"+rs.getString("category")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("pincode")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("lfdate")+"</td><td><img src='../"+rs.getString("goodspic")+"'width='70px' height='75px'></td><td>"+rs.getString("dt")+"</td></tr>");

n++;





}
%>
</table>
</div>
</div>
</div>
   
<%@include file="common/footer.jsp" %>



</body>
</html>