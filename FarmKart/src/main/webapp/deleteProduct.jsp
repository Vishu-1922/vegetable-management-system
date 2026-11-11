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
  font-family: "Poppins", sans-serif;
  background: linear-gradient(135deg, #fceabb, #f8b500);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

form {
  background: #fff;
  padding: 45px 50px;
  border-radius: 18px;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
  width: 380px;
  display: flex;
  flex-direction: column;
  gap: 20px;
  transition: all 0.4s ease;
}

form:hover {
  transform: translateY(-4px);
  box-shadow: 0 12px 28px rgba(0, 0, 0, 0.25);
}

h1 {
  text-align: center;
  color: #c0392b;
  font-size: 26px;
  margin-bottom: 10px;
}

label {
  font-weight: 600;
  color: #333;
  font-size: 15px;
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
  border-color: #e74c3c;
  box-shadow: 0 0 10px rgba(231, 76, 60, 0.3);
}

button {
  background: linear-gradient(135deg, #e74c3c, #c0392b);
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
  background: linear-gradient(135deg, #c0392b, #96281b);
  transform: translateY(-2px);
  box-shadow: 0 6px 14px rgba(0, 0, 0, 0.2);
}

@media (max-width: 480px) {
  form {
    width: 90%;
    padding: 30px 25px;
  }

  input, button {
    font-size: 14px;
  }
}
	
</style>
</head>
<body>
		<form action="deletePeoductdb.jsp" method="post">
			<label>Enter Product Id</label>
			<input type="number" name="id" placeholder="Enter id">
			
			<button>DELETE ITEM</button>
		</form>
		
</body>
</html>