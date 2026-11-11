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
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f4f8;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.cart {
    width: 100%;
    max-width: 400px;
    padding: 20px;
    text-align: center;
}

h1 {
    color: #27ae60;
    font-size: 30px;
    margin-bottom: 30px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

form {
    background-color: #ffffff;
    padding: 40px 30px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
    display: flex;
    flex-direction: column;
    gap: 18px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

form:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.25);
}

label {
    text-align: left;
    font-weight: 600;
    color: #555555;
}

input {
    width: 100%;
    padding: 12px 14px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 14px;
    transition: all 0.3s ease;
}

input:focus {
    border-color: #27ae60;
    box-shadow: 0 0 6px rgba(39, 174, 96, 0.4);
    outline: none;
}

button {
    padding: 14px 0;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    background: linear-gradient(90deg, #e67e22, #f39c12);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: all 0.3s ease;
}

button:hover {
    background: linear-gradient(90deg, #d35400, #e67e22);
    transform: translateY(-2px);
}

@media (max-width: 420px) {
    form {
        padding: 30px 20px;
    }

    h1 {
        font-size: 24px;
    }
}

</style>

</head>
<body>
	<div class="cart">
		<h1>Add cart</h1>
		<%
			int fid=Integer.parseInt(request.getParameter("fid"));
			String name=request.getParameter("name");
		%>
		<form action="addCartdb.jsp" method="post">
			<label>Product_id</label>
			<input type="number" name="id" value="<%=fid %>" placeholder="product id" readonly >
			
			<label>Quantity(kgs)</label>
			<input type="number" name="qt" placeholder="product quntity">
			
			<button>ADD CART</button>
		</form>
		
	</div>
	
</body>
</html>