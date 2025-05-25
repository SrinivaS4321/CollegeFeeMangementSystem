<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Delete Fee Payment</title>
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

        form {
            background-color: #ffffff;
            width: 400px;
            margin: 30px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0 16px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #e53935;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <h2>Delete Fee Payment</h2>
    <form action="DeleteFeePaymentServlet" method="get">
        Student ID: <input type="text" name="studentId" /><br/>
        <input type="submit" value="Delete Payment" />
    </form>
</body>
</html>
