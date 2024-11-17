
<%@page import="java.sql.ResultSet"%>
<%@page import="common.Dbmanager"%>

<%
String email = "" + session.getAttribute("uemail");

if (!email.equals("null")) {
	Dbmanager dbm = new Dbmanager();
	String cmd = "select email,name, picture from registration where email='" + session.getAttribute("uemail") + "'";
	ResultSet rs = dbm.dql(cmd);
	String name="";
	String picture="";
	while(rs.next()) {
		name=rs.getString("name");
		picture=rs.getString("picture");

	}
	//out.print(name+picture);
%>

<nav class="navbar navbar-expand-lg navbar-light"
	style="background: #408080; padding: 0px">
	<div class="container-fluid">

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="../<%= picture %>" class="img-fluid"
						style="height: 35px; width: 35px; border-radius: 50%" /> <span style="color:white"><%= name %></span>
				</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="MyProfile.jsp">Profile</a></li>
						<li><a class="dropdown-item" href="changePassword.jsp">Change Password</a></li>
						
					
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
					</ul></li>
					
					&ensp;&ensp;
				<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="userDash.jsp" style="color:white;margin- ;">Home</a></li> &ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="LostFound.jsp" style="color:white ;">Post Lost & Found</a></li>
					&ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="searchLost.jsp" style="color:white ;">Search Lost & Found</a></li>
					&ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="feedback.jsp" style="color:white ;">Feedback</a></li>
					&ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="myUpload.jsp" style="color:white ;">My Uploads</a></li>
					
				
				

<span class="text-white text-center" style="margin-left:500px;">
Hi,
<%=name %></span>
			</ul>
					</div>
	</div>
</nav>

<%
} else {
out.print(
		"<script> alert('access forbidden, please login to visit this page');window.location.href='./login.jsp'</script>");
}
%>