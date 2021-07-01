<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie List</title>

<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>

</head>
<body  style="background-image: url('https://wallpapercave.com/wp/wp2628115.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;">
<div class="container">
  <h2>Director List</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">#ID</th>
    <th scope="row">MOVIE NAME</th>
    <th scope="row">COLLECTION</th>
    <th scope="row">RATING</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${movieList}" var="movie" >
     <tr>
     <td>${movie.id }</td>
      <td>${movie.name }</td>
      <td>${movie.collection }</td>
      <td>${movie.rating }</td>
     
      
      <td>
       <spring:url value="/movie/v1/updateMovie/${movie.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/movie/v1/deleteMovie/${movie.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/movie/v1/addMovie" var="addURL" />
  <a class="btn btn-primary" href="${addURL}" role="button" >Add New Movie</a>
 </div>

</body>
</html>