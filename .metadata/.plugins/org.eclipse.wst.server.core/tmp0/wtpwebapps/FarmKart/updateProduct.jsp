<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="adminNavBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  margin: 0;
  font-family: "Poppins", sans-serif;
  background: linear-gradient(135deg, #a8edea, #fed6e3);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

form {
  background: #ffffff;
  padding: 45px 50px;
  border-radius: 18px;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  width: 400px;
  display: flex;
  flex-direction: column;
  gap: 18px;
  transition: all 0.4s ease;
  margin-top: 100px;
}

form:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 28px rgba(0, 0, 0, 0.25);
}

h1 {
  text-align: center;
  color: #1b4332;
  font-size: 28px;
  letter-spacing: 0.5px;
  margin-bottom: 25px;
}

label {
  font-weight: 600;
  color: #333;
  font-size: 15px;
  margin-bottom: 3px;
}

input {
  padding: 12px 14px;
  border: 1.5px solid #ccc;
  border-radius: 10px;
  font-size: 15px;
  outline: none;
  transition: all 0.3s ease;
}

input:focus {
  border-color: #27ae60;
  box-shadow: 0 0 10px rgba(39, 174, 96, 0.3);
}

input[readonly] {
  background-color: #f5f5f5;
  cursor: not-allowed;
}

button {
  background: linear-gradient(135deg, #27ae60, #219150);
  color: #fff;
  border: none;
  padding: 14px;
  border-radius: 10px;
  font-size: 16px;
  font-weight: 600;
  letter-spacing: 0.5px;
  cursor: pointer;
  transition: all 0.3s ease;
}

button:hover {
  background: linear-gradient(135deg, #1e8449, #196f3d);
  transform: translateY(-2px);
  box-shadow: 0 6px 14px rgba(0, 0, 0, 0.2);
}

@media (max-width: 480px) {
  form {
    width: 90%;
    padding: 30px 25px;
  }

  h1 {
    font-size: 22px;
  }

  input, button {
    font-size: 14px;
  }
}

</style>
</head>
<body>
	
	<form action="updateProductdb.jsp" method="post">
		<h1>Update product</h1>
			<label>Id</label>
			<input type="text" name="usn" placeholder="Enter product id" >
			
			<label>Product Name</label>
			<input type="text" name="upd" placeholder="name con't be change" readonly>
			
			<label>Quantity</label>
			<input type="number" name="uqt" placeholder="enter product quantity">
			
			<label>Price</label>
			<input type="number" name="upr" placeholder="enter product price">
	
			<button>UPDATE ITEM</button>
	</form>
</body>
</html>