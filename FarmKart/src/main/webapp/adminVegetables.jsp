<%@page import="java.sql.ResultSet"%>
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
	body {
	  margin: 0;
	  font-family: "Poppins", sans-serif;
	  background-color: #dcdcdc;
	}

	/* NAVBAR */
	.navbar {
	  width: 100%;
	  background-color: #000;
	  color: #fff;
	  display: flex;
	  justify-content: space-around;
	  align-items: center;
	  padding: 18px 40px;
	  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
	  position: fixed;
	  top: 0;
	  left: 0;
	  z-index: 100;
	}

	.left-container h1 {
	  font-size: 22px;
	  letter-spacing: 1px;
	}

	.right-container {
	  display: flex;
	  gap: 15px;
	}

	.right-container button {
	  background-color: #e74c3c;
	  color: white;
	  border: none;
	  padding: 10px 18px;
	  border-radius: 6px;
	  font-size: 14px;
	  cursor: pointer;
	  transition: all 0.3s ease;
	}

	.right-container button:hover {
	  background-color: #c0392b;
	  transform: translateY(-2px);
	}

	a {
	  text-decoration: none;
	}

	/* TASK SECTION */
	.task {
	  margin-top: 140px;
	  display: flex;
	  flex-wrap: wrap;
	  justify-content: center;
	  gap: 25px;
	  padding: 40px 20px;
	}

	.task button {
	  background-color: #27ae60;
	  color: white;
	  border: none;
	  padding: 15px 28px;
	  border-radius: 10px;
	  font-size: 16px;
	  font-weight: 600;
	  cursor: pointer;
	  box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
	  transition: all 0.3s ease;
	}

	.task button:hover {
	  background-color: #1e8449;
	  transform: translateY(-3px);
	  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
	}

	/* ✅ TABLE STYLING */
	table {
	  width: 90%;
	  margin: 30px auto 80px auto;
	  border-collapse: collapse;
	  background-color: #fff;
	  border-radius: 10px;
	  overflow: hidden;
	  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
	}

	th, td {
	  padding: 15px 20px;
	  text-align: center;
	  border-bottom: 1px solid #ddd;
	}

	th {
	  background-color: #2ecc71;
	  color: white;
	  font-size: 16px;
	  text-transform: uppercase;
	  letter-spacing: 0.5px;
	}

	tr:hover {
	  background-color: #f4f4f4;
	  transition: background-color 0.3s ease;
	}

	td {
	  color: #333;
	  font-size: 15px;
	}

	/* RESPONSIVE */
	@media (max-width: 800px) {
	  .navbar {
	    flex-direction: column;
	    align-items: flex-start;
	    padding: 15px 20px;
	  }

	  .right-container {
	    flex-wrap: wrap;
	    justify-content: center;
	    margin-top: 10px;
	  }

	  .right-container button {
	    width: 100%;
	  }

	  .task {
	    flex-direction: column;
	    align-items: center;
	    gap: 20px;
	  }

	  .task button {
	    width: 80%;
	  }

	  table {
	    width: 100%;
	    font-size: 14px;
	  }
	}
	
</style>

</head>
<body>
	
		
	<%
		String admin=(String)session.getAttribute("admin");
		String email=(String)session.getAttribute("email");
	%>	
	
	<nav class="navbar">
		<div class="left-container">
			<h1><%= admin%> Dashboard</h1>
		</div>
		<div class="right-container">
			<a href="login.jsp"><button>logout</button></a>
		
		</div>
	</nav>	
	
	<div class="task">
			<a href="addProduct.jsp"><button>Add New Product</button></a>
			<a href="updateProduct.jsp"><button>Update Existing Product</button></a>
			<a href="deleteProduct.jsp"><button>Delete Product</button></a>
	
	</div>
	
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

		<table>
		<thead>
			<tr>
			<th>Id</th>
			<th>name</th>
			<th>quality</th>
			<th>price</th>
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
				<td><%=quality %></td>
				<td><%=price %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	
</body>
</html>