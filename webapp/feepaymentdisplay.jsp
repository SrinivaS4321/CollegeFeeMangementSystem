<%@ page import="java.util.List, com.model.FeePayment" %>
<html>
<head>
    <title>Fee Payments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 30px;
        }

        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4285f4;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #3367d6;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4285f4;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        p {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #333;
        }

        @media print {
            button {
                display: none;
            }
        }
    </style>
</head>
<body>
    <h2>All Fee Payments</h2>

    <!-- ✅ Print Button -->
    <button onclick="window.print()">Print </button>

    <%
        List<FeePayment> list = (List<FeePayment>) request.getAttribute("payments");
        if (list != null && !list.isEmpty()) {
    %>
    <table>
        <tr>
            <th>Payment ID</th>
            <th>Student ID</th>
            <th>Name</th>
            <th>Date</th>
            <th>Amount</th>
            <th>Status</th>
        </tr>
        <% for(FeePayment fp : list) { %>
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
    <% } else { %>
        <p>No payments found.</p>
    <% } %>
</body>
</html>
