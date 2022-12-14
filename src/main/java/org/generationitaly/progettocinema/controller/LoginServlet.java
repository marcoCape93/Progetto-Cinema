package org.generationitaly.progettocinema.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.generationitaly.progettocinema.entity.Utente;
import org.generationitaly.progettocinema.service.UtenteService;
import org.generationitaly.progettocinema.service.impl.UtenteServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UtenteService utenteService = new UtenteServiceImpl();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean hasErrors = false;
		
		if (username.isBlank()) {
			request.setAttribute("errUser", "Username errato");
			hasErrors = true;
		}
		if (password.isBlank()) {
			request.setAttribute("errPass", "Password errata");
			hasErrors = true;
		}
		if (hasErrors) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		Utente u = utenteService.findByUsername(username);
		if(u==null) {
			request.setAttribute("errUser2", "Username errato");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(u != null && !u.getPassword().equals(password)) { 
			request.setAttribute("errPassword", "Password errata");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else
			if(u != null && u.getPassword().equals(password)) { 
				HttpSession session = request.getSession();
				session.setAttribute("id-utente", u.getId());
				session.setAttribute("utente", u);
				response.sendRedirect("home-page.jsp");
			}else{
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
	}
}
