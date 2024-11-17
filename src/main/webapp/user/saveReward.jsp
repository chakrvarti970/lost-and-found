<%@page import="common.Cryptography"%>
<%@page import="common.Dbmanager"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="common.FileRename"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<% 
String fpath="assets/ddpics";
String filepath=request.getRealPath(fpath);
FileRename fr=new FileRename();
MultipartRequest mr=new MultipartRequest(request,filepath,20000000,fr);
String amount=mr.getParameter("amount");
String ddno= mr.getParameter("ddno");
String lfid= mr.getParameter("lfid");
String fname=fpath+fr.name;
String cmd="insert into givereward(rewardby,lfid,amount,ddno,ddpicname) values('"+session.getAttribute("uemail")+"','"+lfid+"','"+amount+"','"+ddno+"','"+fname+"')";
Dbmanager dm=new Dbmanager();
boolean b=dm.dml(cmd);
if(b==true)
{
out.print("<script>alert('Reward submitted successfully.Thanks for the reward.');window.location.href='myUpload.jsp';</script>");


}
else
{
	out.print("<script>alert('Sorry!your reward is not submitted.');window.location.href='myUpload.jsp';</script>");

}

%>