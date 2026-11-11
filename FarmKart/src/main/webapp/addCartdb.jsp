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
    font-family: "Poppins", sans-serif;
    background: linear-gradient(135deg, #e8f5e9, #ffffff);
    margin: 0;
    padding: 40px 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
}

h1 {
    color: #27ae60;
    font-size: 28px;
    margin-bottom: 25px;
    text-align: center;
}

.cart-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #ffffff;
    padding: 15px 25px;
    margin: 12px 0;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(39, 174, 96, 0.15);
    width: 90%;
    max-width: 600px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.cart-item:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(39, 174, 96, 0.3);
}

.cart-item span {
    font-weight: 500;
    font-size: 16px;
    color: #2c3e50;
    min-width: 80px;
    text-align: center;
}

.total-section {
    margin-top: 25px;
    background: #27ae60;
    color: white;
    font-size: 20px;
    font-weight: 600;
    padding: 12px 25px;
    border-radius: 10px;
    width: fit-content;
    box-shadow: 0 4px 10px rgba(39, 174, 96, 0.4);
}

button {
    background-color: #27ae60;
    color: white;
    border: none;
    padding: 12px 25px;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    font-weight: 600;
    margin: 15px 5px 0 5px;
    transition: all 0.3s ease;
}

/* Green hover effect */
button:hover {
    background-color: #1e8449;
    transform: translateY(-2px);
}

/* Special style for Back to Cart button */
a button {
    background-color: white;
    color: #27ae60;
    border: 2px solid #27ae60;
}

a button:hover {
    background-color: #27ae60;
    color: white;
    transform: translateY(-2px);
}

/* Wrapper spacing below navbar */
.user {
    margin-top: 100px;
}

.cart-buttons {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
}

@media (max-width: 500px) {
    .cart-item {
        flex-direction: column;
        align-items: flex-start;
        gap: 8px;
    }

    .cart-item span {
        text-align: left;
    }

    button {
        width: 100%;
        text-align: center;
    }

    .total-section {
        width: 100%;
        text-align: center;
    }
}

</style>
</head>
<body>
	<% int total=0;%>
	<%
		int id =Integer.parseInt(request.getParameter("id"));
		int kg =Integer.parseInt(request.getParameter("qt"));
		String userName=(String)session.getAttribute("username");
		
		
		
		String qry="select * from product_table where id=?";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
		PreparedStatement ps=con.prepareStatement(qry);
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
	%>
	<%
		
		while(rs.next()){
			int s_no=rs.getInt(1);
			String name=rs.getString(2);
			int dbKg=rs.getInt(3);
			int dbprice=rs.getInt(4);
			
		
	%>
		
	<%
		if(kg<=dbKg && id==s_no){
			int newKG=dbKg-kg;
			int bill=kg*dbprice;
			
			
	%>
	
		<div class="user">
			<h1>Welcome <%=userName %> this is your cart</h1>
		</div>
	<%
		String qryI="insert into cart_table values(?,?,?,?)";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection coni=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
		PreparedStatement psi=con.prepareStatement(qryI);
		psi.setInt(1, s_no);
		psi.setString(2, name);
		psi.setInt(3, kg);
		psi.setInt(4, bill);
		
		psi.executeUpdate();
		
	%>	
	<%
	String qryR="select * from cart_table";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conR=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	PreparedStatement psR=con.prepareStatement(qryR);
	ResultSet rsr=psR.executeQuery();	
	%>
		
		
			<%
				while(rsr.next()){
				int uid=rsr.getInt(1);
				String uname=rsr.getString(2);
				int ukg=rsr.getInt(3);
				int uprice=rsr.getInt(4);
				
				total=total+uprice;
				
			%>
			
				<div class="cart-item">
				  <span><%=uname %></span>
				  <span><%=ukg %> kg</span>
				  <span><%=uprice%> rs</span>
				</div>
				<%
					String qryup="update product_table set Quantity=? where id=?";
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection conup=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
					PreparedStatement psup=con.prepareStatement(qryup);
					psup.setInt(1, newKG);
					psup.setInt(2, id);
					
					psup.executeUpdate();
					
				%>	
			
		<%
		}
		%>
		<%
			}
		%>
		
		<%
			}
		%>
	<h1>Total:-<%=total%></h1>
	<form action="order.jsp" method="post">
		<button>Place Order</button>
	</form>
	<a href="userVegetables.jsp"><button>Back To Cart</button></a>
		
</body>
</html>