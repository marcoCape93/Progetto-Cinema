<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="styleAllFilm.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
 		integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col">
			<span style="color: black;"><c:out value="${username}"></c:out></span>
			<form action="logout" method="post">
				<button type="submit">Logout</button>
			</form>
		</div>
		<div class="col">
			<form action="AnnoFilmServlet" method="get">
			<label for="anno">Anno</label>
			<select name="anno">
				<option>Seleziona..</option>
				<c:forEach items="${anni}" var="f">
				<option value="${f}">${f}</option>
				</c:forEach>
			</select>
			<button type="submit">Cerca</button>	
			</form>
		</div>	
		<div class="col">
			<form action="find-by-genere" method="get">
			<label for="genere">Genere</label>
			<select name="genere">
				<option >Seleziona..</option>
				<c:forEach items="${generi}" var="f">
				<option value="${f}">${f}</option>
				</c:forEach>
			</select>
			<button type="submit">Cerca</button>
			</form>
		</div>
	</div>
	<div class="col-6">
	<table class="tabella table table-dark table-striped">
		<thead>
			<tr>
				<th></th>
				<th>Titolo</th>
				<th>Anno</th>
				<!-- <th>Paese</th>
				<th>Genere</th>
				<th>Regista</th>
				<th>Distribuzione</th> -->
				<th>Durata</th>
				<!-- <th>Descrizione</th> -->
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${film}" var="f">
				<tr>
					<td>
						<div class="prova">
						<img class="locandina" alt="Immagine di copertina per ${f.titolo}" src="${f.locandina}">
						<div class="tasto">
							<form action="findById-film" method="get">
							<input type="hidden" name="id" value="${f.id}">
							<button class="btn btn-outline-light btn-sm" type="submit">Info</button>	
							</form>
						</div>
						</div>
						
					</td>
					<td><c:out value="${f.titolo}" /></td>
					<td><c:out value="${f.anno}" /></td>
					<%-- <td><c:out value="${f.paese}" /></td> --%>
					<%-- <td><c:out value="${f.genere}" /></td>
					<td><c:out value="${f.regista}" /></td>
					<td><c:out value="${f.distribuzione}" /></td> --%>
					<td><c:out value="${f.durata}" /></td>
					<%-- <td><c:out value="${f.descrizione}" /></td> --%>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
</body>
</html>