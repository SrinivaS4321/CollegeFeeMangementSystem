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
<form method="post" action="AddFeePaymentServlet" onsubmit="return validateForm()">
    Student ID: 
    <input type="text" name="studentID" pattern="\d+" title="Only numbers allowed" required /><br>

    Student Name: 
    <input type="text" name="studentName" pattern="[A-Za-z ]+" title="Only letters allowed" required /><br>

    Payment Date: 
    <input type="date" name="paymentDate" required /><br>

    Amount: 
    <input type="text" name="amount" pattern="\d+(\.\d{1,2})?" title="Enter a valid amount" required /><br>

    Status: 
    <select name="status">
        <option value="Paid">Paid</option>
        <option value="Overdue">Overdue</option>
    </select><br>

    <input type="submit" value="Add Payment" />
</form>


<script>
function validateForm() {
    const studentID = document.forms[0]["studentID"].value;
    const studentName = document.forms[0]["studentName"].value;
    const amount = document.forms[0]["amount"].value;

    const idRegex = /^\d+$/;
    const nameRegex = /^[A-Za-z ]+$/;
    const amountRegex = /^\d+(\.\d{1,2})?$/;

    if (!idRegex.test(studentID)) {
        alert("Student ID must be numeric.");
        return false;
    }
    if (!nameRegex.test(studentName)) {
        alert("Student Name must contain only letters.");
        return false;
    }
    if (!amountRegex.test(amount)) {
        alert("Amount must be a valid number.");
        return false;
    }
    return true;
}
</script>
   
</html>
