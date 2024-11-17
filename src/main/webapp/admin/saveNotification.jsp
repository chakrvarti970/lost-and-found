<%@page import="common.Dbmanager" %>
<%
try
{
	String msg,cmd;
	msg=request.getParameter("NotificationMsg");
	
	cmd="insert into notification (message) values('"+
	msg+"')";
	Dbmanager dm=new Dbmanager();
	boolean  b=dm.dml(cmd);
	if(b==true)
		out.print("<script>alert('notification saved successfully.');window.location.href='manageNotification.jsp';</script>");
	}
	catch(Exception e)
{
		out.print("<script>alert('Sorry! unable to save notification');window.location.href='manageNotificatio.jsp';</script>");
		}
	%>