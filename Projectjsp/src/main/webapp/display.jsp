<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="cdn.jsp" %>
<%@ page import="java.sql.*, com.database.DBConnection"  %>
</head>
<body>
   <div class="row" >
     <div class="col-md-1"></div>
     <div class="col-md-10">
        <table class=" table table-hover">
           <tr>
			<th>SNO</th>
			<th>NAME</th>
			<th>AGE</th>
			<th>LOCATION</th>
		</tr>
		<%
		try
		{
			Connection con = DBConnection.takeConnection();	
			String query = "select * from student1 order by sno";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("</tr>");
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
		%>
        </table>
     </div>
     <div class="col-md-1"></div>
   </div>
</body>
</html>