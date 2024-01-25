<%@page import="java.security.spec.EncodedKeySpec"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>



</style>
<body>

<h2>welcome!!</h2>

<% List <Movie> movies=(List)request.getAttribute("movies");%>
<table border="2px">

	<tr>
	<th>id</th>
	<th>name</th>
	<th>price</th>
	<th>rating</th>
	<th>genre</th>
	<th>language</th>
	<th>image</th>
	<th>Delete_movie</th>
	<th>Edit_Movie</th>
	</tr>
	
	
	
	<%for(Movie m : movies ){ %>
	<tr>
	<td><%=m.getMovieid()%></td>
	<td><%=m.getMoviename()%></td>
	<td><%=m.getMovieprice()%></td>
	<td><%=m.getMovierating()%></td>
	<td><%=m.getMoviegenre()%></td>
	<td><%=m.getMovielanguage()%> </td>
	
	<%String base64image =new String(Base64.getEncoder().encode(m.getMovieimage())); %>
	<td><img src="data:image/jpeg;base64,<%=base64image%>"height="100px" width="100px"></td>
	
	<td><a href="deletemovie?id=<%=m.getMovieid()%>">Delete</a></td>
	<td><a href ="editmovie?id=<%=m.getMovieid()%>">Edit</a></td>
	</tr>
	
<%} %>


</table>



<a href="addmovie.jsp">Add_movie</a><br>

<a href="logingout">Log Out</a>
</body>
</html>