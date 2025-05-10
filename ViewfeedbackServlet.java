package net.newuser.controller;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.newuser.model.Feedback;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
* Servlet implementation class studentsServlet
*/
@WebServlet("/viewfeedback")
public class ViewfeedbackServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
      
   /**
    * @see HttpServlet#HttpServlet()
    */
   public ViewfeedbackServlet() {
       super();
       // TODO Auto-generated constructor stub
   }

/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//TODO Auto-generated method stub
//response.getWriter().append("Served at: ").append(request.getContextPath());

ArrayList<Feedback> feedbackList = new ArrayList<>();

       try {
       Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newuser?useSSL=false", "root", "root");
           String SELECT_SQL = "select * from feedback;";
           PreparedStatement ps = connection.prepareStatement(SELECT_SQL);
           ResultSet rs = ps.executeQuery();

           while (rs.next()) {
           Feedback feedback = new Feedback();
           feedback.setPatient_name(rs.getString("patient_name"));
           feedback.setTreatment_taken(rs.getString("treatment_taken"));
           feedback.setFeedback(rs.getString("feedback"));
           feedbackList.add(feedback);
              
           }

           rs.close();
           ps.close();
           connection.close();
       } catch (Exception e) {
           e.printStackTrace();
       }
       HttpSession session = request.getSession();
       session.setAttribute("feedbackList", feedbackList);
       RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/viewfeedback.jsp");
       dispatcher.forward(request, response);
   }

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // Retrieve the list of questions from the database or session if needed
   HttpSession session = request.getSession();
   ArrayList<Feedback> feedbackList = (ArrayList<Feedback>) session.getAttribute("feedbackList");
      

       /**
       // Set the score as a request attribute
       request.setAttribute("score", score);
       // Forward to a result page
       RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/result.jsp");
       dispatcher.forward(request, response);*/
}
}