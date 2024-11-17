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
<center>
<div style="border:2px solid black;margin-left:200px; margin-top:150px;margin-right:200px;padding-top:30px;background:cyan;border-radius:10px;">
<h1 class="text-center " style="margin-bottom:30px;">Give Reward</h1>
<hr>
<form action="saveReward.jsp" method="post" enctype="multipart/form-data">
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-8">
<div class="mb-3 row">
    <label for="name" class="col-sm-2 col-form-label">Amount</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputName" name="amount">
      <input type="hidden" name="lfid" value="<%=request.getParameter("id") %>"/>
    </div>
  </div>
<div class="mb-3 row">
    <label for="name" class="col-sm-2 col-form-label"> Demand Draft No</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="inputName" name="ddno">
      </div>
      </div>
      
      
      
      <div class="mb-3 row">
      <label for="name" class="col-sm-2 col-form-label">Dd pic name</label>
      <div class="col-sm-10">
      <input type="file" name="Goodspic" class="form-control"/>
</div>

<center>
<input style="width:300px; " type="submit" value="Give Reward" class="btn-btn-primary btn-lg"/></center>
<br>
      
      </div>
      <div class="col-sm-2"></div>
      
    </div>
  </div>
  </div>
  </form>
  </div>
  </center>
</div>

<div class="row">
<div class="col-sm-12"> 
<%@include file="common/footer.jsp" %>
</div>
</div>


</div>

</body>
</html>