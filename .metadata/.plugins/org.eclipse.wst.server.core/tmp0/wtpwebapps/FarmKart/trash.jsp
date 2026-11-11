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
	
	String qryup="truncate table cart_table";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conup=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	PreparedStatement psup=conup.prepareStatement(qryup);
	
	
	psup.executeUpdate();
	%>
</body>
</html>