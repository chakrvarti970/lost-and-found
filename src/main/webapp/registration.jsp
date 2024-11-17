<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<DOCTYPE html>

<head>
<meta charset="ISO-8859-1">

<%@include file="common/link.jsp" %>
<style>
.err
{
color:red;
}
</style>
</head>
<body>
<div class="container-fluid">

<%@include file="common/header.jsp" %>
<%@include file="./common/menu.jsp" %>


<section>
<div class="row " style="background-color:;background-image:url('./assets/images/ren1.jfif' );background-repeat:no-repeat;background-size:cover; ">
<div class="col-sm-3"></div>

<div class="col-sm-6 mt-5 mb-5" style="text-align:justify;">

<div class="card" >

<h1 class="text-center text- " style="color:#408080">Register Here</h1>
  <div style="background:cyan" class="card-body">
    <form action="saveRegistration.jsp" method="post" enctype="multipart/form-data">
    <div class="mb-3">
    <label for="name" class="form-lable">Name</label>
    <input type="text" name="name"class="form-control" id="tname"/>
    </div>
    <div class="mb-3">
    <label for ="gender"class="form-lable">Gender</label> <br>
    <input type="radio"name="gender" checked class="form-check-input" value="male"/>Male &ensp;
     <input type="radio"name="gender"class="form-check-input"  value="female"/>Female
    
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control" id="temail" >
    
  </div>
  <div class="mb-3">
    <label for ="mobo"class="form-lable">Mobile Number</label>
    <input type="text"name="mobno"class="form-control" id="tmob"/>
    </div>
    <div class="mb-3">
    <label for ="dob"class="form-lable">Date of birth</label>
    <input type="date" name="dob"class="form-control" id="tdob"/>
    </div>
   
  
  <div class="mb-3">
    <label for ="picture"class="form-lable">Profile picture</label>
    <input type="file" required name="picture"class="form-control" id="pic"/>
    </div>
  
  <div class="mb-3">
    <label for="pwd" class="form-label">Password</label>
    <input type="password"  name="password" class="form-control" id="tpass">
  </div>
  <div class="mb-3">
    <label for ="address"class="form-lable">Address</label>
    <textarea name="address"class="form-control" id="taddress" row="6">
    </textarea>
    </div>
    <div class="mb-3">
    <label for ="address"class="form-lable">Verify captcha</label>
     <img src="assets/images/refresh1.jfif" id="refresh"class="form control" style="max-width:50px;display:inline"/>&ensp;
    <img src="GetCaptcha" class="form control" id="cimage" style="max-width:20%"/>
    &ensp; &ensp;&ensp; &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Enter captcha code&ensp;<input type="text" name="captcha" id="tcaptcha" class="form-control mt-2" 
    style="max-width:40%;display:inline; float:right;" id="captcha" >
    
    </div> 
     
    <script>
    
    $(document).ready(function(){
    	$('#refresh').click(function(){
    			$.get("GetCaptcha",null,function(){
    				$("#cimage").attr("src","GetCaptcha");
    				
    		});
        });
    	//validate terms &conditions
    	$("#chkterms").change(function(){
    		
    		var x=$(this).prop("checked");
    		if(x==true)
    			$("#btnsave").prop("disabled",false);
    		else
    			$("#btnsave").prop("disabled",true);
    	});
    	//validate registration form
    	$("#btnsave").click(function(){
    		
    		var name,mob,email,pass,code,picture,dob,address,res=true;
    		//Reading values of all controls....
    		name=$("#tname").val().trim();
    		mob=$("#tmob").val().trim();
    		email=$("#temail").val().trim();
    		pass=$("#tpass").val().trim();
    		code=$("#tcaptcha").val().trim();
    		picture=$("#pic").val().trim();
    		address=$("#taddress").val().trim();
    		dob=$("#tdob").val().trim();
    		//clear old errors
    		$(".err").remove();
    		//validate name
    		if(name.length==0){
    			$("#tname").after("<span class='err'>Please enter your name.</span>");
    		
    		res=false;
    		}
    		else if(name.length<3)
    			{
    			
    			$("#tname").after("<span class='err'>Please enter a valid name</span>");
    			res=false;
    			
    			
    			}
    		//Validate mobile no
    		if(mob.length==0){
    			$("#tmob").after("<span class='err'>Please enter mobile number.</span>");
    			res=false;
    			
    			
    		}
    		if(mob.length!=10){
    			$("#tmob").after("<span class='err'>Mobile number must have exact 10 digits .</span>");
    			res=false;
    		}
    		else{
    			
    			var ascii=mob.charCodeAt(0);
    			if(!(ascii>=54 && ascii<=57))
    				{
    				$("#tmob").after("<span class='err'>Please enter valid mobile no.</span>");
    				res=false;
    				
    				
    				}
    			
    		}
    		//validate email id
    		if(email.length==0){
    			$("#temail").after("<span class='err'>Please enter your email id</span>");
    		
    		res=false;
    		}
    		//validate address
    		if(address.length==0){
    			$("#taddress").after("<span class='err'>Please enter your address</span>");
    		
    		res=false;
    		}
    		else
    			{
    			var count=0,x,ch;
    			for(x=0;x<address.length;x++)
    				{
    				ch=address.charAt(x);
    				if(ch==' '||ch==','||ch=='.'||ch=='-')
    				
    				count++;
    				}
    			
    			if(count<3){
        			$("#taddress").after("<span class='err'>Please enter your full address</span>");
        		
        		res=false;

    			} 
    		}
    		//validate picture
    		if(picture.length>0){
    			var ext=picture.substring(picture.lastIndexOf('.')).toUpperCase();
    			if(!(ext=='.JPG' || ext=='.PNG'||ext=='.JPEG'))
                   {
    				$("#pic").after("<span class='err'>Please choose a valid image file.</span>");
    				res=false;
    				}
    		}
    		//validate password
    		if(pass.length==0)
    			{
    			
    			$("#tpass").after("<span class='err'>Please enter your password.</span>");
    			res=false;
    			}
    		else if(pass.length<5)
			{
			
			$("#tpass").after("<span class='err'>Password must have 5 characters.</span>");
			res=false;
			}
		
    		//validate DOB
    		
    		if(dob.length==0)
    			{
    			$("#tdob").after("<span class='err'>Please enter valid DOB.</span>");
    			
    			res=false;
    			}
    		
    		
    		//validate captcha 
    		if(code.length==0)
    			{
    			$("#tcaptcha").after("<span class='err'>Please enter captcha code.</span>");
    			
    			res=false;
    			}
    		return res;
    	});
    });
    </script>
    
    
    
    
    
    <div class="mb-3">
    <br>
    <input type="checkbox"name="terms"class="form-check-input" id="chkterms"/>
    <span>
    I agree with <a href="" style="text-decoration:none;"> I agree from terms & condition of <b>Lost & Found </b>
    </span>
    </div>
  
  <div class="" align="center">
  <button type="submit" class="btn btn-primary mt-4" style="min-width:120px;float:left;margin-left:50px;padding-bottom:10px;margin-top:26px">Reset</button>
  </div>
  <div class="" align="center">
   <input type="submit" class="btn btn-primary mt-4" id="btnsave" style="min-width:120px ;float:right;margin-left:30px;padding-bottom:10px;"
   disabled="true" value="Submit" />
  </div>
</form>
  </div>
  </div>
  
  <div class="col-sm-3"></div>
  </div>
  </div>
  </div>
  
  <div class="row text-light p-4 text-center" style="background:#408080;">
<div style="float:left;"class="">&copy; All Rights Reserved</div> &ensp; &ensp; &ensp; &ensp;  &ensp; &ensp; &ensp;
&ensp; &ensp; &ensp; &ensp;  &ensp; &ensp; &ensp;
<div class=""><a href="developer.jsp" style="text-decoration:none;margin-left:80px;float:right;color:white;">Developed by Kuldeep Yadav</a></div>
</div>
  
  
</body>
</html>
    