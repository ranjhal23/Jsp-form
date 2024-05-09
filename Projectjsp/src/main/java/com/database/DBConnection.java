package com.database;
import java.sql.*;
import java.util.*;
public class DBConnection {
     public static Connection takeConnection() {
    	 Connection con=null;
    	 try {
    		 Class.forName("com.mysql.cj.jdbc.Driver");
    		 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/batch1", "root", "bhopal");
    		 
    	 }
    	 catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	 return con;
     }
     public static int insertStudentData(String name, int age, String location) {
    	 int status=0;
    	 try {
    		 Connection con= takeConnection();
    		 String query= "insert into student1(name, age, location) values(?,?,?)";
    		 PreparedStatement ps= con.prepareStatement(query);
    		 ps.setString(1, name);
    		 ps.setInt(2, age);
    		 ps.setString(3, location);
    		 status= ps.executeUpdate();
    		 
    	 }
    	 catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	 return status;
     }
}
