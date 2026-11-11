<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@ include file="userNavBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: #f0f5f0;
    margin: 0;
    padding: 0;
}

table {
    width: 90%;
    margin: 100px auto 50px auto;
    border-collapse: collapse;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    background-color: #ffffff;
}

thead {
    background: linear-gradient(90deg, #ffb347, #ffcc33); /* warm gradient header */
    color: #fff;
    text-transform: uppercase;
}

thead th {
    padding: 16px 20px;
    text-align: left;
    font-size: 16px;
    letter-spacing: 0.5px;
}

tbody td {
    padding: 15px 20px;
    border-bottom: 1px solid #e0e0e0;
    font-size: 14px;
    color: #444;
}

tbody tr:nth-child(even) {
    background-color: #fdf6e3;
}

tbody tr:hover {
    background-color: #fff3d1;
    transition: background-color 0.3s ease;
}

button {
    padding: 10px 18px;
    font-size: 14px;
    font-weight: 600;
    color: #fff;
    background: linear-gradient(90deg, #27ae60, #2ecc71);
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s ease, transform 0.2s ease;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

button:hover {
    background: linear-gradient(90deg, #1e8449, #27ae60);
    transform: translateY(-3px) scale(1.02);
}

@media (max-width: 900px) {
    table {
        width: 95%;
    }
    thead th, tbody td {
        padding: 12px 15px;
        font-size: 13px;
    }
    button {
        font-size: 13px;
        padding: 8px 15px;
    }
}
	

</style>
</head>
<body>

	<%!int fid=0; %>
	<%!String name =null; %>
	<%!int quality=0; %>
	<%!int price=0; %>
	<%
	String qry="select * from product_table";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	PreparedStatement ps=con.prepareStatement(qry);
	ResultSet rs=ps.executeQuery();
	%>

	<table border="1" cellpadding="8" cellspacing="0">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			while(rs.next()){
				fid=rs.getInt(1);
				name=rs.getString(2);
				quality=rs.getInt(3);
				price=rs.getInt(4);	
			%>
			<tr>
				<td><%=fid %></td>
				<td><%=name %></td>
				<td><%=quality %> kgs</td>
				<td><%=price %> rs</td>
				<td>
					<form action="addCart.jsp" method="post">
						<input type="hidden" name="fid" value="<%=fid %>">
						<input type="hidden" name="name" value="<%=name %>">
						<input type="hidden" name="price" value="<%=price %>">
						<button>Add Item Cart</button>
					</form>
				</td>
			</tr>
			<%
			} 
			%>
		</tbody>
	</table>
</body>
</html>
