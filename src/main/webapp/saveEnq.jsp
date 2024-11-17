<%@page import="common.Dbmanager" %>
<% String name=request.getParameter("name");
String email=request.getParameter("email");
String mobno=request.getParameter("mobno");
String address=request.getParameter("address");
Dbmanager dbm=new Dbmanager();
String cmd="insert into enquiry (name,email,mobno,message) values('"+name+"','"+email+"','"+mobno+"','"+address+"')";
boolean status=dbm.dml(cmd);
if(status){
	out.print("<script> alert('Thanks for your enquiry, we will reach you soon.');window.location.href='index.jsp'</script>");
	
} else{
	out.print("<script> alert('Thanks for your enquiry, we will reach you soon.');window.location.href='index.jsp'</script>");
}

%>