<%@page import="common.Dbmanager" %>
<%
String nid=request.getParameter("nid");
 String cmd="delete from notification where nid='"+nid+"'";
 Dbmanager dbm=new Dbmanager();
 boolean b=dbm.dml(cmd);
 if(b==true)
	 out.print("<script>alert('Notification deleted successfully.');window.location.href='manageNotification.jsp';</script>");
	 else
		 
		 out.print("<script>alert('Sorry!unable to delete notification.');window.location.href='manageNotification.jsp';</script>");
%>