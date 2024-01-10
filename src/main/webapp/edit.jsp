<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Edit Movie</h2>
	

	<form action="movieupdate"  method="post" enctype ="multipart/form-data">
	<%Movie m=(Movie)request.getAttribute("movies"); %>
	<label for="movieid">Movieid:</label>
	<input type="number" name="movieid" id="movieid"  value="<%=m.getMovieid() %>"><br>
	
	<label for="moviename">moviename</label>
	<input type="text" name="moviename" id="moviename" value="<%=m.getMoviename() %>"><br>
	
	<label for="movieprice">movieprice</label>
	<input type="text" name="movieprice" id="movieprice" value="<%=m.getMovieprice() %>"><br>
	
	<label for="movierating">movierating</label>
	<input type="text" name="movierating" id="movierating" value="<%=m.getMovierating() %>"><br>
	
	<label for="moviegenre">moviegenre</label>
	<input type="text" name="moviegenre" id="moviegenre" value="<%=m.getMoviegenre() %>"><br>
	
	<label for="movielanguage">movielanguage</label>
	<input type="text" name="movielanguage" id="movielanguage" value="<%= m.getMovielanguage()%>"><br>
	
	<label for="movieimage">movieimage</label>
	<input type="file" name="movieimage" id="movieimage" ><br>
	<input type="submit">
	<% String base64image = new String(Base64.getEncoder().encode(m.getMovieimage())); %>
		<img  src="data:image/jpeg;base64 , <%= base64image %>" height="150px" width="100px" >
	
	</form>
	
</body>
</html>