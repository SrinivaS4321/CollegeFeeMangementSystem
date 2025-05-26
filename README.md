           COLLEGE FEE MANGEMENT SYSTEM


STEP 1:FIRST YOU CREATE A DATABASE IN SQL CALLED AS collegefeedb.
	After that you import the MySQL code in data base.
here link:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/mysqlcommand.sql

STEP 2:AFTER CREATING THE DATABASE AND TABLE.IMPORT THE DATA AND ATTACH TO THE ECLISPE

1.create a DYNAMIC WEB PROJECT and give name what you want
2.After the got to this website download MySQL connector
here link:https://dev.mysql.com/downloads/connector/j/
3.After download it attach to src/webapp/web-inf/lib
4.After attach right click in src create new package called com
5.inside com again you create 4 package called as com.util , com.model, com.dao,com.servelt
6.in com.util package attach this file:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/util/DatabaseConnection.java
7.in com.model package attach this file:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/model/FeePayment.java
8.in com.dao package attach this file:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/dao/FeePaymentDAO.java
9.in com.servlet package attach these file:
a.AddFeePaymentServlet.java:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/servlet/AddFeePaymentServlet.java
b. UpdateFeePaymentServlet.java:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/servlet/UpdateFeePaymentServlet.java
c.DeleteFeePaymentServlet.java:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/servlet/DeleteFeePaymentServlet.java
d. DisplayFeePaymentsServlet.java:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/servlet/DisplayFeePaymentsServlet.java
e. ReportServlet.java:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/servlet/ReportServlet.java
f.reportcretiraservlet:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/blob/main/com/servlet/ReportCriteriaServlet.java
10.After attaching right click in webadd attach this folder:https://github.com/SrinivaS4321/CollegeFeeMangementSystem/tree/main/webapp

