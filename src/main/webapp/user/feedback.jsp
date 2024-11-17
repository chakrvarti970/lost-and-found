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
<div class="col-sm-10">
<div class="col-sm-3">

</div>
<center>
<div style="border:2px solid black;margin-left:350px;margin-right:350px;margin-top:100px;background:cyan;border-radius:10px;">
<div class="col-sm-6 mt-4 mb-4">
<center>
<h1 class="text-primary"> Feedback</h1></center>
<hr>

<p class="text-success text-center">Please send your valuable feedback</p>
<form action="saveFeedback.jsp" method="post">
<div class="mb-3">
  <label for="title" class="form-label">Feedback Title</label>
  <input type="text" name="Title" required class="form-control" id="exampleFormControlInput1" placeholder="Topic of the feedback">
</div>
<div class="mb-3">
  <label for="FeedbackMessage" class="form-label">Feedback Message</label>
  <textarea name="Message"class="form-control" required id="exampleFormControlTextarea1" rows="3" name="message"> Type your Feedback here...</textarea>

</div>
<button type="submit" class="btn btn-success mt-2 mb-2"> Save Feedback </button>

</form>
</div>
</div>


<div class="col-sm-3">

</div>

</div>
</div>

<%@include file="common/footer.jsp" %>


</body>
</html>