<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String name=request.getParameter("pname");
		String quantity=request.getParameter("quantity");
	//	out.print(rollno+sname+marks);
		
			
			String url= "jdbc:oracle:thin:@localhost:1521:XE";
			String uname= "test";
			String pass= "test";
			String query="insert into product values(?,?)"; 
			
			Class.forName("oracle.jdbc.driver.OracleDriver");//REGISTER AND LOAD THE DRIVEFR
			Connection con=DriverManager.getConnection(url,uname,pass);
			Statement st = con.createStatement(); 
			PreparedStatement ps=con.prepareStatement(query); 
			ps.setString(1,name);
			ps.setString(2,quantity);
			ps.executeUpdate();
	%>

</body>
</html>