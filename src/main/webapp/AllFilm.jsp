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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script src="https://unpkg.com/htmlincludejs"></script>


</head>
<body style="background-color: #1E1D1D">
<c:if test="${error==true}">
	<script type="text/javascript">
	alert("Errore inserimento dati")
	
	</script></c:if>
	<c:if test="${error2==true }"><script type="text/javascript">
	alert("Film non in elenco ")
	
	</script></c:if>
	<%@include file="./navbarDef.jsp" %>

	<div class="container-fluid">
	
	<div class="space">

	<div class="row text-center">
		<div class="col">
			<table class="tabella table table-dark table-striped" style="margin-top: 60px">
				<thead>
					<tr>
						<th></th>
						<th>Titolo</th>
						<th>Anno</th>
						<th>Genere</th>
						<!-- <th>Paese</th>
						<th>Regista</th>
						<th>Distribuzione</th> -->
						<th>Durata</th>
						<!-- <th>Descrizione</th> -->
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${film}" var="f">
						<tr class="riga">
							<td>
								<form action="findById-film" method="get">
									<input type="hidden" name="id" value="${f.id}">
									<input type="hidden" name="idUtente" value="${utente.id}">
									<div class="foto">
										<input type="image" src="${f.locandina}" value="${f.id}"
											name="id" alt="Locandina per ${f.titolo}">
									</div>
									<br><br>
								</form>
							</td>
							<td><c:out value="${f.titolo}" /></td>
							<td><c:out value="${f.anno}" /></td>
							<td><c:out value="${f.genere}" /></td>
							<td><c:out value="${f.durata}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</div>
	</div>
</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>