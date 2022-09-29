<%@page import="org.generationitaly.progettocinema.entity.Utente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pagina Film</title>
<link rel="stylesheet" href="styles-film.css">
<link rel="stylesheet" href="rating.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous"/>

<link href='https://fonts.googleapis.com/css?family=Questrial'
	rel='stylesheet'>
	
	   <script src="https://unpkg.com/htmlincludejs"></script>
	   
	   <include src="./navbar.html"></include>
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>
<body style="background-color: #1E1D1D;">


	<!-- commento -->
	<div class="background-image">
		<div class="container-fluid">
			<div class="row">
				<div class="col lg-4">
					<div class="poster" style="margin-left: -12px">
						<img alt="Locandina per ${film.titolo}" src="${film.locandina}">
					</div>
				</div>
				<div class="col lg-8" id="info-film">
					<div class="info" style="margin-top: -40px">
						<div class="movie-title">
							<c:out value="${film.titolo}" />
						</div>
						<div class="movie-detail">
							<br>
							<div class="set">
								<label>Genere</label>
								<c:out value="${film.genere}" />
							</div>
							<div class="set">
								<label>Regista</label>
								<c:out value="${film.regista}" />
							</div>
							<br>
							<div class="set">
								<label>Distribuzione</label>
								<c:out value="${film.distribuzione}" />
							</div>
							<div class="set">
								<label>Paese</label>
								<c:out value="${film.paese}" />
							</div>
							<div class="set">
								<label>Anno</label>
								<c:out value="${film.anno}" />
							</div>
							<br>
							<div class="set">
								<label>Durata</label>
								<c:out value="${film.durata} minuti" />
							</div>
							<div class="set">
								<label>Voto</label>
								<c:out value="${film.voto}" />
							</div>
							<br>
							<div class="wrapper " style="background-color: #1E1D1D">
		<h3 style="color: white">Vota il film</h3>
		
		<form action="AddVoto" method="post">
			<div class="rating">
			<input type="hidden" name="id-film" value="${film.id }">
			<input type="hidden" name="id-utente" value="${utente.id }">
				
				<i class='bx bx-star star' style="--i: 0;"></i>
				<i class='bx bx-star star' style="--i: 1;"></i>
				<i class='bx bx-star star' style="--i: 2;"></i>
				<i class='bx bx-star star' style="--i: 3;"></i>
				<i class='bx bx-star star' style="--i: 4;"></i>
			<div class="btn-group">
				<button type="submit" class="btn submit">Submit</button>
				<button class="btn cancel">Cancel</button>
			</div>
			</div>
		</form>
		
	</div>
							<br>
							
							<br>
							<div class="set">
								<label>Descrizione</label> <span><c:out
										value="${film.descrizione}" /></span>
							</div>
						</div>

							

						<div class="movie-cast">
							<br>
							<div class="header">Cast</div>
							<div class="list" style="margin-top: -20px;">
								<c:forEach items="${film.cast}" var="a">
									<form action="findById-attore" method="get">
									<figure class="figure foto">
										<input type="hidden" name="id" value="${a.attore.id }">
										<div class="fotoprova">
											<input type="image" src="${a.attore.foto}" value="${a.attore.id }" name="id" 
											alt="Locandina per ${a.attore.cognome}" class="figure-img img-fluid rounded">
										</div>
										<figcaption class="figure-caption text-center"><c:out value="${a.attore.nome}" />
											<c:out value="${a.attore.cognome}" /></figcaption>
									</figure>
									</form>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
		<script type="text/javascript">
		const allStar = document.querySelectorAll('.rating .star')
		const ratingValue = document.querySelector('.rating input')

		allStar.forEach((item, idx)=> {
			item.addEventListener('click', function () {
				let click = 0
				ratingValue.value = idx + 1

				allStar.forEach(i=> {
					i.classList.replace('bxs-star', 'bx-star')
					i.classList.remove('active')
				})
				for(let i=0; i<allStar.length; i++) {
					if(i <= idx) {
						allStar[i].classList.replace('bx-star', 'bxs-star')
						allStar[i].classList.add('active')
					} else {
						allStar[i].style.setProperty('--i', click)
						click++
					}
				}
			})
		})
		
		</script>
</body>
</html>