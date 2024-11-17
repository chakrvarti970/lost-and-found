<%@page import="common.Dbmanager"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="assets/images/user-images/";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String name=mr.getParameter("name");
String email=mr.getParameter("email");
String gender=mr.getParameter("gender");
String mobno=mr.getParameter("mobno");

String dob=mr.getParameter("dob");
String address=mr.getParameter("address");


String fname=fpath+fr.name;
String cmd;
if(fr.name!=null)
cmd="update registration set name='"+name+"',gender='"+gender+"',mobno='"+mobno+"',dob='"+dob+"',address='"+address+"', picture='"+fname+"' where email='"+email+"'";
else
 cmd="update registration set name='"+name+"',gender='"+gender+"',mobno='"+mobno+"',dob='"+dob+"',address='"+address+"'  where email='"+email+"'";
Dbmanager dm= new Dbmanager();
boolean b=dm.dml(cmd);
if(b==true)
{
out.print("<script>alert('profile updated successfully');window.location.href='MyProfile.jsp'</script>");

}
else
{
	out.print("<script>alert('sorry!unable to update your profile');window.location.href='MyProfile.jsp'</script>");

}
%>