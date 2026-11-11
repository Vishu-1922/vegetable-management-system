<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Order Completed</title>
<style>
body {
  font-family: "Poppins", sans-serif;
  background: linear-gradient(135deg, #e8f5e9, #c8e6c9, #a5d6a7);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  flex-direction: column;
  text-align: center;
  color: #2e7d32;
}

.gif-container {
  width: 220px;
  height: 220px;
  margin-bottom: 30px;
  background: rgba(255, 255, 255, 0.8);
  border-radius: 50%;
  padding: 20px;
  box-shadow: 0 8px 20px rgba(39, 174, 96, 0.2);
  animation: pop 1.2s ease-in-out;
}

.gif-container img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  border-radius:50%;
  animation: float 2.5s ease-in-out infinite;
}

h1 {
  font-size: 32px;
  color: #27ae60;
  margin-bottom: 10px;
  letter-spacing: 1px;
  text-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

p {
  font-size: 17px;
  color: #2e2e2e;
  margin-bottom: 28px;
  line-height: 1.5;
}

form button {
  background-color: #27ae60;
  color: white;
  border: none;
  padding: 14px 30px;
  border-radius: 10px;
  cursor: pointer;
  font-size: 17px;
  font-weight: 600;
  transition: all 0.3s ease;
  box-shadow: 0 5px 15px rgba(39, 174, 96, 0.3);
}

form button:hover {
  background-color: #1e8449;
  transform: translateY(-3px);
  box-shadow: 0 8px 18px rgba(39, 174, 96, 0.4);
}

@keyframes float {
  0% { transform: translateY(0px); }
  50% { transform: translateY(-10px); }
  100% { transform: translateY(0px); }
}

@keyframes pop {
  0% { transform: scale(0.8); opacity: 0; }
  100% { transform: scale(1); opacity: 1; }
}

@media (max-width: 400px){
  h1 { font-size: 24px; }
  p { font-size: 14px; }
  .gif-container { width: 160px; height: 160px; }
  form button { padding: 10px 20px; font-size: 15px; }
}
</style>
</head>
<body>

  <div class="gif-container">
    <img src="https://cdn.dribbble.com/userupload/42400743/file/original-4c6047f52f949a9fcbb86820423361bc.gif" alt="Gift Box Opening">
  </div>

  <h1>🎉 Order Completed!</h1>
  <p>Your order has been placed successfully.<br>Enjoy your products from FarmCart!</p>

  <form action="userVegetables.jsp" method="post">
    <button type="submit">Continue Shopping</button>
  </form>
	<%

		String qry="delete from cart_table";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
		PreparedStatement ps=con.prepareStatement(qry);	
		
		ps.executeUpdate();
		
	%>
</body>
</html>
    