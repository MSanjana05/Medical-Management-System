package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import net.newuser.dao.EprescriptionDao;
import net.newuser.model.Eprescription;
import net.newuser.model.Prescription;

@WebServlet("/EprescriptionServlet")
public class EprescriptionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private EprescriptionDao eprescriptionDao;

    public void init() {
        eprescriptionDao = new EprescriptionDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/searchPrescription.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        
        // Fetch prescription details from the database using the provided pid
        Eprescription eprescription = eprescriptionDao.selectEprescription(pid);

        if (eprescription != null) {
            // Set prescription in the request attribute to pass to JSP
            request.setAttribute("eprescription", eprescription);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/prescriptionPreview.jsp");
            dispatcher.forward(request, response);
        } else {
            // If no prescription found, redirect back with an error message
            request.setAttribute("errorMessage", "No prescription found for the provided PID.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/searchPrescription.jsp");
            dispatcher.forward(request, response);
        }
    }
}
