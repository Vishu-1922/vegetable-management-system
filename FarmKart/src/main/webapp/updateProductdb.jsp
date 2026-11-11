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
<style>
	
</style>
</head>
<body>
		<%
		int s_no=Integer.parseInt(request.getParameter("usn"));
		String Product=request.getParameter("upd");
		int quality=Integer.parseInt(request.getParameter("uqt"));
		int price=Integer.parseInt(request.getParameter("upr"));
		
		String qry="update product_table set Quantity=?,price=? where id=?;";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
		PreparedStatement ps=con.prepareStatement(qry);
		
		ps.setInt(1, quality);
		ps.setInt(2, price);
		ps.setInt(3, s_no);
		ps.executeUpdate();
		
		RequestDispatcher rd=request.getRequestDispatcher("adminVegetables.jsp");
		rd.forward(request, response);
		
		
		
		%>
</body>
</html>