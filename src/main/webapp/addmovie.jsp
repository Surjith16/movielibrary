<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Add Movie</h2>
	<form action="savemymovie"  method="post" enctype ="multipart/form-data">
	<label for="movieid">Movieid:</label>
	<input type="text" name="movieid" id="movieid" ><br>
	
	<label for="moviename">moviename</label>
	<input type="text" name="moviename" id="moviename"><br>
	
	<label for="movieprice">movieprice</label>
	<input type="text" name="movieprice" id="movieprice"><br>
	
	<label for="movierating">movierating</label>
	<input type="text" name="movierating" id="movierating"><br>
	
	<label for="moviegenre">moviegenre</label>
	<input type="text" name="moviegenre" id="moviegenre"><br>
	
	<label for="movielanguage">movielanguage</label>
	<input type="text" name="movielanguage" id="movielanguage"><br>
	
	<label for="movieimage">movieimage</label>
	<input type="file" name="movieimage" id="movieimage"><br>
	<input type="submit">
	</form>
	
</body>
</html>