<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>College Fee Payment System</title>
    <style>
        body {
            background-color: #e6f2ff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #003366;
            color: white;
            padding: 20px;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        nav {
            margin: 50px auto;
            width: 50%;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin: 15px 0;
        }

        a {
            text-decoration: none;
            color: #003366;
            font-size: 18px;
            display: block;
            padding: 10px;
            background-color: #cce6ff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #99ccff;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to College Fee Payment System</h1>
    </header>

    <nav>
        <ul>
            <li><a href="feepaymentadd.jsp">➕ Add Fee Payment</a></li>
            <li><a href="feepaymentupdate.jsp">✏️ Update Fee Payment</a></li>
            <li><a href="feepaymentdelete.jsp">❌ Delete Fee Payment</a></li>
            <li><a href="DisplayFeePaymentsServlet">📄 Display All Payments</a></li>
            <li><a href="reports.jsp">📊 Reports</a></li>
        </ul>
    </nav>
</body>
</html>
