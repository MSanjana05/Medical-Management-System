package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.newuser.dao.AnewuserDao;
import net.newuser.model.Anewuser;

import java.io.IOException;

/**
 * Servlet implementation class AnewuserServlet
 */
@WebServlet("/AnewuserServlet")
public class AnewuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    private AnewuserDao anewuserDao;

    public void init() {
    	anewuserDao = new AnewuserDao();
    }
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnewuserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/searchpatient.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("name");
	        
	        // Fetch prescription details from the database using the provided pid
		    Anewuser anewuser = anewuserDao.selectAnewuser(name);

	        if (anewuser != null) {
	            // Set prescription in the request attribute to pass to JSP
	            request.setAttribute("anewuser", anewuser);
	            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/patientPreview.jsp");
	            dispatcher.forward(request, response);
	        } else {
	            // If no prescription found, redirect back with an error message
	            request.setAttribute("errorMessage", "No prescription found for the provided PID.");
	            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/searchpatient.jsp");
	            dispatcher.forward(request, response);
	        }
	    
	}

}
