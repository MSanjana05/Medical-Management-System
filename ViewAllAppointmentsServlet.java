package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.newuser.model.AppointmentDetails;
import net.newuser.dao.AppointmentDetailsDao;

import java.io.IOException;
import java.util.List;

@WebServlet("/view-all-appointments")
public class ViewAllAppointmentsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ViewAllAppointmentsServlet: doGet called"); // Debugging

        // Use DAO to fetch appointments
        AppointmentDetailsDao dao = new AppointmentDetailsDao();
        List<AppointmentDetails> appointmentList = dao.getAllAppointments();

        // Set the appointment list in the session
        HttpSession session = request.getSession();
        session.setAttribute("appointmentList", appointmentList);

        // Forward to the JSP page
        System.out.println("Forwarding to viewAllAppointments.jsp..."); // Debugging
        RequestDispatcher dispatcher = request.getRequestDispatcher("/viewAllAppointments.jsp");
        dispatcher.forward(request, response);
    }
}