package net.newuser.controller;

import net.newuser.dao.SurveyDAO;
import net.newuser.model.SurveyResponse;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Submit")
public class SubmitSurveyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ageGroup = request.getParameter("age_group");
        String gender = request.getParameter("gender");
        int q1 = Integer.parseInt(request.getParameter("q1")); // Changed to int
        int q2 = Integer.parseInt(request.getParameter("q2")); // Changed to int
        int q3 = Integer.parseInt(request.getParameter("q3")); // Changed to int
        int q4 = Integer.parseInt(request.getParameter("q4")); // Changed to int
        int q5 = Integer.parseInt(request.getParameter("q5")); // Changed to int
        int q6 = Integer.parseInt(request.getParameter("q6")); // Changed to int

        SurveyResponse survey = new SurveyResponse();
        survey.setAgeGroup(ageGroup);
        survey.setGender(gender);
        survey.setQ1(q1); // Set as int
        survey.setQ2(q2); // Set as int
        survey.setQ3(q3); // Set as int
        survey.setQ4(q4); // Set as int
        survey.setQ5(q5); // Set as int
        survey.setQ6(q6); // Set as int

        boolean success = SurveyDAO.saveSurveyResponse(survey);
        if (success) {
            // Send a JavaScript response to show an alert and redirect
            response.getWriter().write("<html><body>");
            response.getWriter().write("<script type='text/javascript'>");
            response.getWriter().write("alert('Thank you for your submission!');");
            response.getWriter().write("window.location.href = 'survey.jsp';");
            response.getWriter().write("</script>");
            response.getWriter().write("</body></html>");
        }  else {
            response.sendRedirect("error.jsp");
        }
    }
}