<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Update Fee Payment</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            width: 350px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"], input[type="date"], select {
            width: 100%;
            padding: 8px;
            margin: 8px 0 16px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Update Fee Payment</h2>
    <form action="UpdateFeePaymentServlet" method="post">
        Payment ID:<input type="text" name="paymentID" /><br>
        Student ID:<input type="text" name="studentID" /><br>
        Student Name:<input type="text" name="studentName" /><br>
        Payment Date:<input type="date" name="paymentDate" /><br>
        Amount:<input type="text" name="amount" /><br>
        Status: 
        <select name="status"><br>
            <option value="Paid">Paid</option>
            <option value="Unpaid">Unpaid</option>
        </select>
        <input type="submit" value="Update" />
    </form>
</body>
</html>
