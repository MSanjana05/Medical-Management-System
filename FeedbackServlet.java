package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.newuser.dao.FeedbackDao;
import net.newuser.model.Feedback;
import java.io.IOException;

/**
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private FeedbackDao feedbackDao = new FeedbackDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/feedback.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patient_name=request.getParameter("patient_name");
		String treatment_taken=request.getParameter("treatment_taken");
		String feedback=request.getParameter("feedback");
		
		Feedback  feedback1 = new Feedback();
		feedback1.setPatient_name(patient_name);
		feedback1.setTreatment_taken(treatment_taken);
		feedback1.setFeedback(feedback);
		
		try {
			FeedbackDao.feedbackregister(feedback1);
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/success.jsp");
			dispatcher.forward(request, response);
			}
	
	public FeedbackDao getfeedbackDao() {
		return feedbackDao;
	}

	public void setfeedbackDao(FeedbackDao FeedbackDao) {
		 FeedbackDao = feedbackDao;
	}
	}

                         
