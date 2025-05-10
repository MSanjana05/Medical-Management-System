<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Anonymous General Survey</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin: 15px 0 5px;
            font-weight: bold;
            color: #555;
        }

        select, input[type="radio"] {
            margin-right: 10px;
        }

        input[type="radio"] {
            margin-left: 10px;
        }

        button {
            background-color: #5cb85c;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            font-size: 16px;
            display: block;
            margin: 20px auto;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #4cae4c;
        }

        .question {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <h2>Anonymous General Survey</h2>
    <form action="Submit" method="post">
        <label>Age Group:</label>
        <select name="age_group">
            <option value="18-25">18-25</option>
            <option value="26-40">26-40</option>
            <option value="41-60">41-60</option>
            <option value="60+">60+</option>
        </select>

        <label>Gender:</label>
        <select name="gender">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>

        <div class="question">
            <label>Do you exercise daily?</label>
            <input type="radio" name="q1" value="1" required> Yes
            <input type="radio" name="q1" value="0"> No
        </div>

        <div class="question">
            <label>Do you smoke?</label>
            <input type="radio" name="q2" value="1" required> Yes
            <input type="radio" name="q2" value="0"> No
        </div>

        <div class="question">
            <label>Do you follow a balanced diet?</label>
            <input type="radio" name="q3" value="1" required> Yes
            <input type="radio" name="q3" value="0"> No
        </div>

        <div class="question">
            <label>Do you sleep at least 7 hours a day?</label>
            <input type="radio" name="q4" value="1" required> Yes
            <input type="radio" name="q4" value="0"> No
        </div>

        <div class="question">
            <label>Do you feel stressed often?</label>
            <input type="radio" name="q5" value="1" required> Yes
            <input type="radio" name="q5" value="0"> No
        </div>

        <div class="question">
            <label>Do you drink enough water daily?</label>
            <input type="radio" name="q6" value="1" required> Yes
            <input type="radio" name="q6" value="0"> No
        </div>

        <button type="submit">Submit Survey</button>
    </form>
    
</body>
</html>