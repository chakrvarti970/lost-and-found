<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../common/link.jsp" %>

</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12" style="padding: 0px;"> 
<%@include file="./common/menu.jsp" %>
</div>
</div>

<div class="row">
<%@include file="common/sidebar.jsp" %>
<div  style="background-color:;background-image:url('./assets/images/ren1.jfif' );background-repeat:no-repeat;background-size:cover; "class="col-sm-10">
<div class="row">


<div class="col-sm-3">

</div>
<div class="col-sm-6" style="background-color:cyan;padding-top:20px;padding-bottom:20px;margin-top:30px;margin-bottom:30px;">

<form action="saveLostFound.jsp" method="post" enctype="multipart/form-data">
<h2 class="text-center text-primary">Lost and Found things</h2>
</hr>
<select name="posttype" class="form-control">
<option>Post Type</option>
<option>Lost Material</option>
<option>Found Material</option>
</select>
<br>
<select name="Category" class="form-control">
<option value="">Goods Category</option>
<option>Mobile Phone</option>
<option>Wallets and Money</option>
<option>Family Members</option>
<option>Vehicles</option>
<option>Bags and goods</option>
<option>Key & Key Chain</option>
<option>Book & Notes</option>



</select>
<br>
<textarea name="address" class="form-control" row="3"placeholder="where you lost & Found material? Please specify address"></textarea>
<br>
<input type="number" name="pincode" placeholder="Pin-Code" class="form-control"/>
<br>
<textarea name="description" class="form-control" row="3"placeholder="Tell us more about lost and found material"></textarea>
<br>

Date of Lost and /Found:
<input type="date" name="lfdate" class="form-control"/>
<br>
Pic of Lost and /Found:
<input type="file" name="goodspic" class="form-control"/>
<br>

<input style="margin-top:10px"type="submit" value="Upload Material" class="btn-btn-primary btn-lg"/>





<br>

</form>

</div>
<div class="col-sm-3">

</div>
</div>
</div>

</div>
<%@include file="common/footer.jsp" %>


</body>
</html>