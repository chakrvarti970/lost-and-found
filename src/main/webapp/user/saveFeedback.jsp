<%@page import="common.Dbmanager" %>
<%
try
{
	String title,msg,cmd;
	title=request.getParameter("Title");
	msg=request.getParameter("Message");
	cmd="insert into feedback(userid,title,message) values('"+session.getAttribute("uemail").toString()+"','"+
	title+"','"+msg+"')";
	Dbmanager dm=new Dbmanager();
	boolean  b=dm.dml(cmd);
	if(b==true)
		out.print("<script>alert('Feedback submitted successfully.');window.location.href='feedback.jsp';</script>");
	}
	catch(Exception e)
{
		out.print("<script>alert('Sorry! due to some technical issue;.');window.location.href='feedback.jsp';</script>");
		}
	%>