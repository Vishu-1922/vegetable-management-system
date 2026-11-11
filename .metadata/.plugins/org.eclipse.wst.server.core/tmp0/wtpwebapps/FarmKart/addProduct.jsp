<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="adminNavBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
  margin: 0;
  padding: 0;
  font-family: "Poppins", sans-serif;
  background-color: #d0f0fd;
}

.container {
  background: #ffffff;
  padding: 40px 50px;
  border-radius: 12px;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
  width: 400px;
  text-align: center;
  margin-top:120px;
  position: absolute;
  left: 500px;
}

.container h1 {
  color: #27ae60;
  margin-bottom: 25px;
  font-size: 28px;
  letter-spacing: 0.5px;
}

form {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

label {
  text-align: left;
  font-weight: 600;
  color: #333;
  margin-bottom: 5px;
}

input {
  padding: 12px 15px;
  border: 1px solid #ccc;
  border-radius: 6px;
  font-size: 14px;
  outline: none;
  transition: all 0.3s ease;
}

input:focus {
  border-color: #27ae60;
  box-shadow: 0 0 5px rgba(39, 174, 96, 0.3);
}

button {
  background-color: #27ae60;
  color: white;
  border: none;
  padding: 14px;
  border-radius: 8px;
  font-size: 16px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
}

button:hover {
  background-color: #1e8449;
  transform: translateY(-2px);
}

@media (max-width: 480px) {
  .container {
    width: 90%;
    padding: 25px 20px;
  }

  .container h1 {
    font-size: 22px;
  }
}
	
</style>

</head>
<body>
	<div class="container">
		<h1>Add product</h1>
		<form action="addProductdb.jsp" method="post">
				<label>Product Id</label>
				<input type="text" name="sn" placeholder="enter the product id">
				
				<label>Product Name</label>
				<input type="text" name="pd" placeholder="enter product name">
				
				<label>Quantity(Kgs)</label>
				<input type="number" name="qt" placeholder="enter product quantity">
				
				<label>Price</label>
				<input type="number" name="pr" placeholder="enter product price">
		
				<button>ADD ITEM</button>
		</form>
	</div>
</body>
</html>