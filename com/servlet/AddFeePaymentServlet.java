package com.servlet;

import com.dao.FeePaymentDAO;
import com.model.FeePayment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/AddFeePaymentServlet")
public class AddFeePaymentServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String studentIDStr = request.getParameter("studentID");
	        String studentName = request.getParameter("studentName");
	        String amountStr = request.getParameter("amount");

	        // Basic validations
	        if (studentIDStr == null || !studentIDStr.matches("\\d+")) {
	            throw new ServletException("Invalid Student ID. Must be numeric.");
	        }
	        if (studentName == null || !studentName.matches("[A-Za-z ]+")) {
	            throw new ServletException("Invalid Student Name. Only letters are allowed.");
	        }
	        if (amountStr == null || !amountStr.matches("\\d+(\\.\\d{1,2})?")) {
	            throw new ServletException("Invalid amount. Must be a valid number.");
	        }

	        int studentID = Integer.parseInt(studentIDStr);
	        Date paymentDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("paymentDate"));
	        double amount = Double.parseDouble(amountStr);
	        String status = request.getParameter("status");

	        FeePayment payment = new FeePayment(0, studentID, studentName, paymentDate, amount, status);
	        FeePaymentDAO dao = new FeePaymentDAO();
	        dao.insertPayment(payment);

	        response.sendRedirect("DisplayFeePaymentsServlet");
	    } catch (Exception e) {
	        throw new ServletException("Error while processing payment: " + e.getMessage());
	    }
	}

}
