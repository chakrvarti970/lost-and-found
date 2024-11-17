<%@page import="common.Dbmanager" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="assets/goodspic";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String posttype,category,address,pin,desc,picname ,sdt;
posttype=mr.getParameter("posttype");
category=mr.getParameter("Category");

address=mr.getParameter("address");
pin=mr.getParameter("pincode");
desc=mr.getParameter("description");
sdt=mr.getParameter("lfdate");
picname=fpath+"/"+fr.name;
String cmd="Insert into lostfound(userid,posttype,category,address,pincode,description,lfdate,goodspic) values('"+session.getAttribute("uemail")+"','"+posttype+"','"+category+"','"+address+"','"+pin+"','"+desc+"','"+sdt+"','"+picname+"')";
Dbmanager dm=new Dbmanager();
boolean b=dm.dml(cmd);
if(b==true)
{
out.print("<script> alert('your  LostFound post submitted successfully.');window.location.href='LostFound.jsp';</script>");
	
}
else
{
	out.print("<script> alert('Sorry! unable to find lost and found pots.');window.location.href='LostFound.jsp';</script>");}





%>