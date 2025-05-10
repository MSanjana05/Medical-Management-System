<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="net.newuser.model.AppointmentDetails" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Appointments</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f5f8fd;
            color: #444;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }

        .container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border: 2px solid #4caf50;
            text-align: center;
        }

        h2 {
            text-align: center;
            font-size: 30px;
            font-weight: 600;
            color: #800080;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .message {
            color: #6c757d;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>All Appointments</h2>

    <% 
        List<AppointmentDetails> appointmentList = (List<AppointmentDetails>) session.getAttribute("appointmentList");
        if (appointmentList == null || appointmentList.isEmpty()) { 
    %>
        <p class="message">No appointments found.</p>
    <% } else { %>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Date</th>
                    <th>Symptoms</th>
                    <th>Message</th>
                    <th>Doctor</th>
                </tr>
            </thead>
            <tbody>
                <% for (AppointmentDetails appointment : appointmentList) { %>
                    <tr>
                        <td><%= appointment.getName() %></td>
                        <td><%= appointment.getPhone() %></td>
                        <td><%= appointment.getDate() %></td>
                        <td><%= appointment.getSymptom() %></td>
                        <td><%= appointment.getMessage() %></td>
                        <td><%= appointment.getDrname() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>
</div>

</body>
</html>