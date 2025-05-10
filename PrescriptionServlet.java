package net.newuser.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import net.newuser.dao.PrescriptionDao;
import net.newuser.model.Prescription;

@WebServlet("/PrescriptionServlet")
public class PrescriptionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private PrescriptionDao prescriptionDao = new PrescriptionDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/prescription.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve prescription details from the form
        String pname = request.getParameter("pname");
        String pid = request.getParameter("pid");
        String date = request.getParameter("date");
        String doctorname = request.getParameter("doctorname");
        int age = Integer.parseInt(request.getParameter("age"));

        // Retrieve multiple medicine details
        String[] medicines = request.getParameterValues("medicine[]");
        String[] durations = request.getParameterValues("duration[]");
        String[] whenToEats = request.getParameterValues("when_to_eat[]");
        String[] times = request.getParameterValues("time[]");

        // Create a prescription object and set basic fields
        Prescription prescription = new Prescription();
        prescription.setPid(pid);
        prescription.setPname(pname);
        prescription.setDate(date);  // Make sure the format is dd-MM-yyyy
        prescription.setDoctorname(doctorname);
        prescription.setAge(age);

        // Prepare a StringBuilder to hold the medicine details in a formatted manner
        StringBuilder medicineDetails = new StringBuilder();

        for (int i = 0; i < medicines.length; i++) {
            medicineDetails.append("Medicine: ").append(medicines[i])
                            .append(", Duration: ").append(durations[i])
                            .append(", When to Eat: ").append(whenToEats[i])
                            .append(", Time: ").append(times[i])
                            .append("<br>"); // Use HTML break to make it look cleaner in the JSP
        }

        // Set the medicine details in the prescription object
        prescription.setMedicineDetails(medicineDetails.toString());

        // Save the prescription using DAO
        try {
            prescriptionDao.savePrescription(prescription);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Forward to a success page or prescription preview page
        request.setAttribute("prescription", prescription);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/success.jsp");
        dispatcher.forward(request, response);
    }
    
    public PrescriptionDao getPrescriptionDao() {
        return prescriptionDao;
    }

    public void setPrescriptionDao(PrescriptionDao prescriptionDao) {
        this.prescriptionDao = prescriptionDao;
    }
}
