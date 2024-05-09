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
  <div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
       <fieldset>
          <legend>Student Information</legend>
          <form  method="post" action="insertRecordjsp.jsp">
              <input type="text" name="name" class="form-control" placeholder="Enter Name"/><br/>
			  <input type="text" name="age" class="form-control" placeholder="Enter Age"/><br/>
			  <select name="location" class="form-control">
			       <option value="US">United States</option>
	                <option value="UK">United Kingdom</option>
	                <option value="India">India</option>
	                <option value="Australia">Australia</option>
			  </select><br/>
			  <input type="submit" class="btn btn-primary" value="Save Record"/>
          </form>
       </fieldset>
    </div>
    <div class="col-md-4"></div>
  </div>
  
</body>
</html>