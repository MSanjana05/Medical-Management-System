package net.newuser.controller;

import net.newuser.dao.SurveyDAO;
import net.newuser.model.SurveyResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/fetchResponses")
public class ViewResponsesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<SurveyResponse> responses = SurveyDAO.getAllSurveyResponses();
        request.setAttribute("responses", responses);
        request.getRequestDispatcher("/viewResponses.jsp").forward(request, response);
    }
}