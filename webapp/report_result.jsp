<%@ page import="java.util.List, com.model.FeePayment" %>
<%
    List<FeePayment> report = (List<FeePayment>) request.getAttribute("report");
    Double totalCollection = (Double) request.getAttribute("totalCollection");
%>
<html>
<head>
    <title>Report Results</title>
    <style>
        body {
            background-color: #fffaf0;
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h3 {
            color: #333;
            text-align: center;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 10px 15px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #ffcc99;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        p {
            text-align: center;
            font-size: 16px;
            color: #555;
        }
    </style>
</head>
<body>
<% if (report != null) { %>
    <h3>Report Results:</h3>
    <table border="1">
        <tr>
            <th>Payment ID</th>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Payment Date</th>
            <th>Amount</th>
            <th>Status</th>
        </tr>
        <% for(FeePayment fp : report) { %>
        <tr>
            <td><%= fp.getPaymentID() %></td>
            <td><%= fp.getStudentID() %></td>
            <td><%= fp.getStudentName() %></td>
            <td><%= fp.getPaymentDate() %></td>
            <td><%= fp.getAmount() %></td>
            <td><%= fp.getStatus() %></td>
        </tr>
        <% } %>
    </table>
<% } else if (totalCollection != null) { %>
    <h3>Total Collection:</h3>
    <p><%= totalCollection %></p>
<% } else { %>
    <p>No data available for the selected report.</p>
<% } %>
</body>
</html>
