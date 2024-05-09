<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="cdn.jsp" %>
</head>
<body>
   <%-- Write something in h1 tag --%>
  <div class="container">
     <div class="row">
     <br/>
       <%@ include file="insert.jsp" %>
     </div>
     <br/>
     <div class="row">
      <%@ include file="display.jsp" %>
     </div>
  </div>
   
   
</body>
</html>