<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="style-homepage.css">
<link rel="stylesheet" href="styles-carousel.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
	
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href='https://fonts.googleapis.com/css?family=Questrial'
	rel='stylesheet'>

<script src="https://unpkg.com/htmlincludejs"></script>

</head>
<body style="background-color: white;">
	<%@include file="./navbarHomeDef.jsp" %>
	<br>
	<br>
	<br>
	
	<div class="container-fluid">

			<div class="container text-center" id="products">
				
				<form action="tuttiFilm" method="get">
					<input type="hidden" name="id" value="${utente.id }">
					<div class="slider"
						style="background-image: url(https://www.webstaurantstore.com/uploads/seo_category/2021/8/popcorn-header.jpg)">
						<div class="productInfo">
							<button type="submit" class="productText" >Archivio Film</button>
						</div>
					</div>
				</form> <form action="tuttiAttori" method="get">
					<input type="hidden" name="id" value="${utente.id }">
					<div class="slider"
						style="background-image: url(https://mr.comingsoon.it/imgdb/PrimoPiano/137650_ppl.jpg)">
						<div class="productInfo">
							<button type="submit"  class="productText" style="">Archivio Attori</button>
						</div>
					</div>
				</form> 
			</div>	

		<br><br>
		
		<div class="title-blog" style="background-color: white">
			<h3 style="text-align: center">🔎 CERCA NEGLI ARCHIVI 🔎</h3>
			
			</div>
			
		<br>	

		<div class="ricerca1">
			<div class="row">
				<div class="col lg-6 sm-4">
					<h5 id="ricerca-titolo">Film per anno:</h5>
					<form action="FindByAnnoServlet" method="get" class="d-flex"
				role="search">
				<input name="anni" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">
					<p style="margin-left: -6.5px; margin-top: -2px; margin-bottom: -6.5px">Cerca</p>
				</button>
			</form>
				</div>
				<div class="col lg-6 sm-4">
					<h5 id="ricerca-titolo">Film per genere:</h5>
					<form action="FindByGenereServlet" method="get" class="d-flex"
				role="search">
				<input name="generi" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">
				<p style="margin-left: -6.5px; margin-top: -2px; margin-bottom: -6.5px">Cerca</p>
				</button>
			</form>
				</div>
			</div>
		</div>
		
		<br>

		<div class="ricerca2">
			<div class="row">
				<div class="col lg-6 sm-4">
					<h5 id="ricerca-titolo">Film per titolo:</h5>
					<form action="FindByTitoloServlet" method="get" class="d-flex"
				role="search">
				<input name="titoli" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
					<button class="btn btn-outline-success" type="submit">
					<p style="margin-left: -6.5px; margin-top: -2px; margin-bottom: -6.5px">Cerca</p>
				</button>			
				</form>
				</div>
				<div class="col lg-6 sm-4">
					<h5 id="ricerca-titolo">Attori per cognome:</h5>
					<form action="findCognome-attore" method="get" class="d-flex"
					role="search">
					<input name="cognome" class="form-control me-2" type="text"
						placeholder="Cerca..." aria-label="Cerca...">
					<button class="btn btn-outline-success" type="submit">
					<p style="margin-left: -6.5px; margin-top: -2px; margin-bottom: -6.5px">Cerca</p>
				</button>
				</form>
				</div>
			</div>
		</div>
		</div>
	
		<br><br>
		
		<%@include file="./carousel.html" %>
		
		<br>
		
			<div class="title-blog" style="background-color: white">
			<h3 style="text-align: center">🎬 LE NEWS DEL MOMENTO 🎬</h3>
			
			</div>
			
			<br>
			
			<div class="sfondo-blog">
			
			<br><br>

			<div class="container text-center" id="products">
							
				<a
					href="https://www.badtaste.it/cinema/articoli/avatar-2-james-cameron-sceneggiatura-scartata/" target="_blank">
					<div class="product"
						style="background-image: url(https://www.cinematographe.it/wp-content/uploads/2022/07/avatar-2-signore-degli-anelli-james-cameron.jpeg)">
						<div class="productInfo">
							<p class="productText">Avatar 2, presto al cinema!</p>
						</div>
					</div>
				</a> <a
					href="https://www.badtaste.it/cinema/articoli/ryan-reynolds-hugh-jackman-wolverine-deadpool-3-data-uscita/" target="_blank">
					<div class="product"
						style="background-image: url(https://i0.wp.com/www.badtaste.it/cinema/wp-content/uploads/sites/1/2022/09/deadpool-3-wolverine.jpg?w=1200&quality=85&strip=all&ssl=1)">
						<div class="productInfo">
							<p class="productText">Deadpool 3, nel cast Hugh Jackman</p>
						</div>
					</div>
				</a> <a
					href="https://www.badtaste.it/cinema/articoli/top-gun-maverick-jon-hamm-accoglienza-giovani-attori/" target="_blank">
					<div class="product"
						style="background-image: url(https://i0.wp.com/www.badtaste.it/cinema/wp-content/uploads/sites/1/2022/05/top-gun-maverick-1.jpg?w=1200&quality=85&strip=all&ssl=1)">
						<div class="productInfo">
							<p class="productText">Top Gun: Maverick, successo al cinema</p>
						</div>
					</div>
				</a>
			</div>
						<br>
			</div>
	  
	
	<br><br>
	
	<div class="video-player">
		<div class="row">
			<div class="col lg-4 sm-4">
			<h3 style="text-align: center">🎥 I TRAILER DELLA SETTIMANA 🎥</h3>
			<br>
			<div class="trailer" id="trailer">	
			<center>
			<iframe width="480" height="315" src="https://www.youtube.com/embed/videoseries?list=PLEpEp4fsUam9guJ5h8DNyb4ENX5A844d3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</center>
				</div>
			</div>
			<div class="col lg-4 sm-4">
			<h3 style="text-align: center">🎤 L'INTERVISTA DELLA SETTIMANA 🎤</h3>
			<br>
			<div class="interview" id="interview">	
			<center>
			<iframe width="480" height="315" src="https://www.youtube.com/embed/n_Otn2IXIPk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>			</center>
				</div>
			</div>
			<div class="col lg-4 sm-4">
			<h3 style="text-align: center">🥇 TOP & FLOP DI SETTEMBRE '22 🥇</h3>
			<br>
			<div class="interview" id="interview">	
			<center>
			<iframe width="480" height="315" src="https://www.youtube.com/embed/Sxr2BrH-8fQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>				</div>
			</div>
			</div>
		</div>
		</div>
	
	<br><br>
		
	<include src="./footer.html"></include>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
		<script type="text/javascript">

		</script>
</body>
</html>