<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.database.DBConnection" %>
    <%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String location = request.getParameter("location");
    
   int status =  DBConnection.insertStudentData(name,Integer.parseInt(age),location);
   
   response.sendRedirect("index1.jsp");
    
    %>