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
		String s_no=request.getParameter("sn");
		String Product=request.getParameter("pd");
		int quality=Integer.parseInt(request.getParameter("qt"));
		int price=Integer.parseInt(request.getParameter("pr"));
		
		session.setAttribute("s_no", s_no);
		
		
		String qry="insert into product_table values(?,?,?,?)";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
		PreparedStatement ps=con.prepareStatement(qry);
		ps.setString(1, s_no);
		ps.setString(2, Product);
		ps.setInt(3, quality);
		ps.setInt(4, price);
		
		ps.executeUpdate();
		RequestDispatcher rd=request.getRequestDispatcher("adminVegetables.jsp");
		rd.forward(request, response);
	%>
	<a href="adminVegetables.jsp">CLICK HERE ADMIN</a>
</body>
</html>