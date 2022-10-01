<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <nav class="navbar bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="./home-page.jsp">moviespace</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">
        	<c:if test="${empty utente}">
        	<span style="color: black;">
        		 <a href="registrationDef.jsp">Non sei registrato?</a>
        	</span>
        	</c:if>
        	<c:if test="${not empty utente }">
       		<span style="color: black;">
        	Ciao 
        	<c:out value="${sessionScope.utente.nome}"></c:out>
        	!
        	</span>
        	</c:if>
				
         </h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <form action="home-page.jsp" method="get">
          	<input type="hidden" name="#">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Home Page</button>
            </form>
          </li>
          <li class="nav-item">
          	<form action="tuttiFilm" method="get">
          	<input type="hidden" name="film">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Lista Film</button>
            </form>
          </li>
          <li class="nav-item">
            <form action="tuttiAttori" method="get">
          	<input type="hidden" name="listAttori">
          	<button type="submit" class="btn btn-outline-secondary" style="border-color: white;">Lista Attori</button>
            </form>
          </li>
          <li class="nav-item">
          	<form action="logout" method="post">
          		<button type="submit" class="btn btn-outline-secondary" name="" style="border-color: white;">
          		Logout
          		</button>
          	</form>
          </li>
        </ul>
        <br>
        <h5 id="ricerca-titolo">Ricerca film per anno:</h5>
					<form action="RicercaServlet" method="get" class="d-flex"
				role="search">
				<input name="anni" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">Cerca</button>
			</form>
			<br>
			<h5 id="ricerca-titolo">Ricerca film per genere:</h5>
					<form action="RicercaServlet" method="get" class="d-flex"
				role="search">
				<input name="generi" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">Cerca</button>
			</form>
			<br>
			<h5 id="ricerca-titolo">Ricerca film per titolo:</h5>
					<form action="RicercaServlet" method="get" class="d-flex"
				role="search">
				<input name="titoli" class="form-control me-2" type="text"
					placeholder="Cerca..." aria-label="Cerca...">
				<button class="btn btn-outline-success" type="submit">Cerca</button>
			</form>
			<br>
			<h5 id="ricerca-titolo">Ricerca attori per cognome:</h5>
					<form action="findCognome-attore" method="get" class="d-flex"
					role="search">
					<input name="cognome" class="form-control me-2" type="text"
						placeholder="Cerca..." aria-label="Cerca...">
					<button class="btn btn-outline-success" type="submit">Cerca</button>
				</form>
      </div>
    </div>
  </div>
</nav>