<%String email=""+session.getAttribute( "aemail");

if(!email.equals("null")){
%>
<nav class="navbar navbar-expand-lg navbar-light" style="background: #408080;padding: 0px">
  <div class="container-fluid">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="../assets/images/a2.jpg"  class="img-fluid" style="height: 35px;width: 35px; border-radius: 50%"/> <span style="color:white">Kuldeep yadav</span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="changePassword.jsp">change password</a></li>
            <li><a class="dropdown-item" href="#">Settings</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
          </ul>
        </li>
        
					&ensp;&ensp;
				<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="adminDash.jsp" style="color:white;margin- ;">Home</a></li> &ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="userManagement.jsp" style="color:white ;">User Management</a></li>
					&ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="manageNotification.jsp" style="color:white ;">Event Management</a></li>
					&ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="sendEmail.jsp" style="color:white ;">Send Email</a></li>
					&ensp;&ensp;
					<li class="nav-item mt-1"><a class="nav-link active"
					aria-current="page" href="enquiry.jsp" style="color:white ;">Enquiry Management</a></li>
					
				
				
                
      </ul>
      <form class="d-flex">
        <input class="form-control me-2"style="color:#a35c9d" type="search" placeholder="Search" aria-label="Search">
        <button style="color:white"class="btn btn-outline-" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<% 
}
else
{
	out.print("<script> alert('access forbidden, please login to visit this page');window.location.href='./login.jsp'</script>");}%>