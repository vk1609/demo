<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Form</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

</head>
<body style="background-image: url('https://wallpapercave.com/wp/wp2628115.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;">

 <div class="container">
 <div class="row">
 <div class ="col-md-8">
  <spring:url value="/movie/v1/saveMovie" var="saveURL" />
  <h2>ADD MOVIE HERE</h2>
  <form:form modelAttribute="movieForm" method="post" action="${saveURL}" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>MOVIE NAME</label>
    <form:input path="name" cssClass="form-control" id="name" />
    <form:errors path="name"></form:errors>
   </div>
   <div class="form-group">
    <label>BOX OFFICE COLLECTIONS</label>
    <form:input path="collection" cssClass="form-control" id="collection" />
    <form:errors path="collection"></form:errors>
   </div>
   <div class="form-group">
    <label>RATING</label>
    <form:input path="rating" cssClass="form-control" id="rating" />
   </div>
  
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  </div>
  <div class="col-md-4">
  <img src="" >
  </div>
  </div>
 </div>


</body>
</html>