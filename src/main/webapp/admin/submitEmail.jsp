<%@page import="common.Dbmanager"%>
<%@page import="common.Mailer"%>
<% 


String receiver=request.getParameter("receiver");
String subject=request.getParameter("subject");
String content=request.getParameter("content");

Dbmanager dbm=new Dbmanager();

String cmd="insert into sendemail (receiver, subject, content) values('"+receiver+"','"+subject+"','"+content+"')";
out.print(cmd);
boolean status= dbm.dml(cmd);
if(status){
	boolean mstatus= Mailer.send(receiver, subject, content);
	if(mstatus)
	{
		out.print("<script>alert('Email send successfully.'); window.location.href='sendEmail.jsp';</script>");
	}else{
		out.print("<script>alert('Unable to send email.'); window.location.href='sendEmail.jsp';</script>");
	}
}else{
	out.print("<script>alert('Unable to send email and save request, Please try again later'); window.location.href='sendEmail.jsp';</script>");
	
}


%>