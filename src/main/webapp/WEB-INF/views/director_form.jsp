<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Director Form</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

</head>
<body style="background-image: url('https://wallpapercave.com/wp/wp3373378.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;">

 <div class="container">
  <spring:url value="/director/v1/saveDirector" var="saveURL" />
  <h2>ADD DIRECTOR HERE</h2>
  <form:form modelAttribute="directorForm" method="post" action="${saveURL}" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>DIRECTOR NAME</label>
    <form:input path="name" cssClass="form-control" id="name" />
    <form:errors path="name"></form:errors>
   </div>
   <div class="form-group">
    <label>DIRECTOR AGE</label>
    <form:input path="age" cssClass="form-control" id="age" />
    <form:errors path="age"></form:errors>
   </div>
   <div class="form-group">
    <label>GENDER</label>
    <form:input path="gender" cssClass="form-control" id="gender" />
   </div>
   <div class="form-group">
    <label>AWARDS WON</label>
    <form:input path="awards" cssClass="form-control" id="awards" />
    <form:errors path="awards"></form:errors>
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  
 </div>

</body>
</html>