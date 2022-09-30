package org.generationitaly.progettocinema.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.generationitaly.progettocinema.entity.Film;
import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.service.FilmService;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.service.impl.FilmServiceImpl;
import org.generationitaly.progettocinema.service.impl.UtenteServiceImpl;



/**
 * Servlet implementation class FindByIdFilmServlet
 */
@WebServlet("/findById-film")
public class FindByIdFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FilmService filmService = new FilmServiceImpl();
	private UtenteService utenteService=new UtenteServiceImpl();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int idUtente=Integer.parseInt(request.getParameter("idUtente"));
		System.out.println(id);
		System.out.println(idUtente);
		Film film = filmService.findById(id);
		Utente utente=utenteService.findById(idUtente);
		System.out.println(film);
		System.out.println(utente);
		request.setAttribute("film", film);
		request.setAttribute("utente", utente);
		request.getRequestDispatcher("schedaFilmDef.jsp").forward(request, response);
		
	}

}
