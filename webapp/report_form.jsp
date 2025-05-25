<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Generate Report</title>
    <style>
        body {
            background-color: #32a897;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        form {
            background-color: #ffffff;
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            margin-top: 20px;
            background-color: #ff9966;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #e67300;
        }
    </style>
</head>
<body>
    <h2>Generate Fee Payment Reports</h2>
    <form method="post" action="ReportServlet">
        <label>Report Type:</label>
        <select name="reportType">
            <option value="overdue">Overdue Payments</option>
            <option value="paid">Students Not Paid by Date</option>
            <option value="total">Total Collection in Date Range</option>
        </select><br><br>

        <div id="cutoffDateDiv">
            <label>Cutoff Date:</label>
            <input type="date" name="cutoffDate" /><br><br>
        </div>

        <div id="dateRangeDiv">
            <label>Start Date:</label>
            <input type="date" name="startDate" /><br><br>
            <label>End Date:</label>
            <input type="date" name="endDate" /><br><br>
        </div>

        <input type="submit" value="Generate Report" />
    </form>
</body>
</html>
