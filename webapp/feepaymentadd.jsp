<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Add Fee Payment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f); /* soft orange gradient */
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 30px;
            color: #b34700; /* dark orange */
        }

        form {
            background-color: #fff8f0;
            width: 400px;
            margin: 30px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            margin: 8px 0 16px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #ff8000;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #e67300;
        }
    </style>
</head>
<body>
    <h2>Add Fee Payment</h2>
    <form method="post" action="AddFeePaymentServlet">
        Student ID: <input type="text" name="studentID" /><br>
        Student Name: <input type="text" name="studentName" /><br>
        Payment Date: <input type="date" name="paymentDate" /><br>
        Amount: <input type="text" name="amount" /><br>
        Status: 
        <select name="status">
            <option value="Paid">Paid</option>
            <option value="Overdue">Overdue</option>
        </select><br>
        <input type="submit" value="Add Payment" />
    </form>
</body>
</html>
