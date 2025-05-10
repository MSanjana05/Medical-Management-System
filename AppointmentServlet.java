package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.newuser.dao.AppointmentDao;
import net.newuser.model.Appointment;

import java.io.IOException;

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private AppointmentDao appointmentDao = new AppointmentDao();

    public AppointmentServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/appointment.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String symptom = request.getParameter("symptom");
        String message = request.getParameter("message");
        String drname = request.getParameter("drname");

        Appointment appointment = new Appointment();
        appointment.setName(name);
        appointment.setPhone(phone);
        appointment.setDate(date); // Ensure date is passed as dd-MM-yyyy
        appointment.setSymptom(symptom);
        appointment.setMessage(message);
        appointment.setDrname(drname); // Setting doctor name

        try {
            AppointmentDao.bookingregister(appointment);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/success.jsp");
        dispatcher.forward(request, response);
    }
    
	public AppointmentDao  getappointmentDao() {
		return appointmentDao;
	}

	public void setappointmentDao(AppointmentDao AppointmentDao) {
		AppointmentDao = appointmentDao;
	}
}
