<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int id=Integer.parseInt(request.getParameter("id"));
	
		String qry="delete from product_table where id=?";
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
		PreparedStatement ps=con.prepareStatement(qry);
		ps.setInt(1, id);
		
		ps.executeUpdate();
		
		RequestDispatcher rd=request.getRequestDispatcher("adminVegetables.jsp");
		rd.forward(request, response);
		
		
	%>
</body>
</html>