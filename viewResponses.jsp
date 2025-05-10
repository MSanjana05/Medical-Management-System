<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.util.Map, java.util.HashMap, java.util.ArrayList" %>
<%@ page import="net.newuser.model.SurveyResponse" %>
<%@ page import="net.newuser.dao.SurveyDAO" %>
<html>
<head>
    <title>Survey Responses</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .chart-container {
            width: 80%;
            margin: auto;
            padding: 20px;
        }
        canvas {
            display: block !important;
        }
    </style>
</head>
<body>
<h1>Survey Responses</h1>

<table>
    <thead>
        <tr>
            <th>Response ID</th>
            <th>Age Group</th>
            <th>Gender</th>
            <th>Q1</th>
            <th>Q2</th>
            <th>Q3</th>
            <th>Q4</th>
            <th>Q5</th>
            <th>Q6</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<SurveyResponse> responses = SurveyDAO.getAllSurveyResponses();
            Map<String, int[]> questionCount = new HashMap<>();
            Map<String, Integer> ageGroupCount = new HashMap<>();
            Map<String, Integer> genderCount = new HashMap<>();
            
            for (int i = 1; i <= 6; i++) {
                questionCount.put("Q" + i, new int[]{0, 0}); // {Yes, No}
            }

            if (responses != null && !responses.isEmpty()) {
                for (SurveyResponse vresponse : responses) {
        %>
                    <tr>
                        <td><%= vresponse.getResponseId() %></td>
                        <td><%= vresponse.getAgeGroup() %></td>
                        <td><%= vresponse.getGender() %></td>
                        <td><%= vresponse.getQ1() %></td>
                        <td><%= vresponse.getQ2() %></td>
                        <td><%= vresponse.getQ3() %></td>
                        <td><%= vresponse.getQ4() %></td>
                        <td><%= vresponse.getQ5() %></td>
                        <td><%= vresponse.getQ6() %></td>
                    </tr>
        <%
                    ageGroupCount.put(vresponse.getAgeGroup(), ageGroupCount.getOrDefault(vresponse.getAgeGroup(), 0) + 1);
                    genderCount.put(vresponse.getGender(), genderCount.getOrDefault(vresponse.getGender(), 0) + 1);

                    for (int i = 1; i <= 6; i++) {
                        try {
                            Object answerObj = vresponse.getClass().getMethod("getQ" + i).invoke(vresponse);
                            String answer = (answerObj != null) ? answerObj.toString().trim() : "";

                            if ("1".equalsIgnoreCase(answer)) {
                                questionCount.get("Q" + i)[0]++;
                            } else if ("0".equalsIgnoreCase(answer)) {
                                questionCount.get("Q" + i)[1]++;
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            } else {
        %>
                <tr>
                    <td colspan="10">No responses found.</td>
                </tr>
        <%
            }
        %>
    </tbody>
</table>

<div class="chart-container">
    <h2 style="text-align:center;">Survey Questions - Yes/No Responses</h2>
    <canvas id="questionChart"></canvas>
</div>

<div class="chart-container">
    <h2 style="text-align:center;">Age Group Distribution</h2>
    <canvas id="ageGroupChart"></canvas>
</div>

<div class="chart-container">
    <h2 style="text-align:center;">Gender Distribution</h2>
    <canvas id="genderChart"></canvas>
</div>

<script>
    const questionLabels = ["Q1", "Q2", "Q3", "Q4", "Q5", "Q6"];
    const yesData = [<%= questionCount.get("Q1")[0] %>, <%= questionCount.get("Q2")[0] %>, <%= questionCount.get("Q3")[0] %>, <%= questionCount.get("Q4")[0] %>, <%= questionCount.get("Q5")[0] %>, <%= questionCount.get("Q6")[0] %>];
    const noData = [<%= questionCount.get("Q1")[1] %>, <%= questionCount.get("Q2")[1] %>, <%= questionCount.get("Q3")[1] %>, <%= questionCount.get("Q4")[1] %>, <%= questionCount.get("Q5")[1] %>, <%= questionCount.get("Q6")[1] %>];

    new Chart(document.getElementById('questionChart').getContext('2d'), {
        type: 'bar',
        data: {
            labels: questionLabels,
            datasets: [
                { label: 'Yes', data: yesData, backgroundColor: 'green' },
                { label: 'No', data: noData, backgroundColor: 'red' }
            ]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        stepSize: 1
                    }
                }
            }
        }
    });

    const ageLabels = ["<%= String.join(",      ", new ArrayList<>(ageGroupCount.keySet())) %>"];
    const ageData = [<%= ageGroupCount.values().toString().replaceAll("[\\[\\]]", "") %>];
    new Chart(document.getElementById('ageGroupChart').getContext('2d'), {
        type: 'pie',
        data: {
            labels: ageLabels,
            datasets: [{ data: ageData, backgroundColor: ['blue', 'orange', 'green', 'red'] }]
        }
    });

    const genderLabels = ["<%= String.join(",      ", new ArrayList<>(genderCount.keySet())) %>"];
    const genderData = [<%= genderCount.values().toString().replaceAll("[\\[\\]]", "") %>];
    new Chart(document.getElementById('genderChart').getContext('2d'), {
        type: 'pie',
        data: {
            labels: genderLabels,
            datasets: [{ data: genderData, backgroundColor: ['pink','cyan','yellow'] }]
        }
    });
</script>
</body>
</html>
