<%@page import="common.*" %>
<%@page import="java.sql.ResultSet"%>
<% 
String pass,newpass,confpass,epass,aid;
pass=request.getParameter("cpass");
newpass=request.getParameter("newpass");
confpass=request.getParameter("confpass");
aid=session.getAttribute("uemail").toString();
String msg="";
if(newpass.equals(confpass))
{
   Cryptography cg=new Cryptography();
   epass=cg.EncryptMyPassword(pass);
   String cmd="Select *from login where email='"+aid
		   +"' and password='"+epass+"' and utype='user'";
   Dbmanager dbm=new Dbmanager();
   ResultSet rs=dbm.dql(cmd);
   if(rs.next()==true)
   {
	   epass=cg.EncryptMyPassword(newpass);
	   cmd="update login set password='"+epass+
			   "' where email='"+aid+"'";
	   boolean status=dbm.dml(cmd);
	   if(status==true)
	       msg="Password updated successfully.";
	   else
		   msg="Sorry! unable to update your password.";
   }
   else
	   msg="Invalid current password.please try again.";
   
}
else
	msg="password and confirm password must be same.";
out.print("<script>alert('"+msg+"');window.location.href='changePassword.jsp';</script>");


%>