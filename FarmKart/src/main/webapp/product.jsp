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
    padding-top: 70px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: url('https://uhchousecall.com/wp-content/uploads/2022/03/food-groupsveggies.jpg') no-repeat center center fixed;
    background-size: cover;
}

/* Navbar */
.navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 60px;
    background-color: #27ae60;
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 0 40px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    color: white;
    z-index: 1000;
}

.navbar-left .user-type {
    font-size: 18px;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.navbar-center .user-email {
    font-size: 15px;
    font-weight: 500;
    background: rgba(255, 255, 255, 0.25);
    padding: 6px 16px;
    border-radius: 20px;
    max-width: 250px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    text-align: center;
}

.navbar-right .logout-btn {
    font-size: 15px;
    font-weight: 600;
    color: #ffffff;
    text-decoration: none;
    background: #e74c3c;
    padding: 6px 16px;
    border-radius: 20px;
    transition: background 0.3s ease, transform 0.2s ease;
}

.navbar-right .logout-btn:hover {
    background: #c0392b;
    transform: translateY(-2px);
}

/* Heading */
h1 {
    text-align: center;
    color: #333;
    margin-top: 40px;
    font-size: 28px;
}

/* Product card */
.product {
    max-width: 400px;
    margin: 60px auto;
    padding: 40px 30px;
    background: rgba(255, 255, 255, 0.9);
    border-radius: 15px;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product:hover {
    transform: translateY(-10px);
    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);
}

.product h1 {
    font-size: 28px;
    color: #27ae60;
    margin-bottom: 30px;
}

/* Centered button */
.product form {
    display: flex;
    justify-content: center;
}

.product button {
    padding: 15px 40px;
    font-size: 18px;
    font-weight: 600;
    color: #fff;
    background-color: #27ae60;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.2s ease, box-shadow 0.2s ease;
}

.product button:hover {
    background-color: #1e8449;
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.25);
}

/* Responsive Navbar */
@media (max-width: 900px) {
    .navbar {
        padding: 0 20px;
    }
}

@media (max-width: 600px) {
    .navbar {
        flex-direction: column;
        height: auto;
        padding: 10px 20px;
        gap: 8px;
    }
    .navbar-center .user-email {
        max-width: 100%;
    }
    .product {
        margin-top: 40px;
    }
}

</style>

</head>
<body>

	<div class="product">
			<h1>Choose a category</h1>
			
			<%
				String email=(String)session.getAttribute("email");
				String type=(String)session.getAttribute("type");
				
				if(email.equals("goramvishnu2628@gmail.com")){
					/* RequestDispatcher rs=request.getRequestDispatcher("adminVegetables.jsp");
					rs.forward(request, response); */
					session.setAttribute("admin", type);
					session.setAttribute("email", email);
					out.println("<form action='adminVegetables.jsp' method='post'><button>Vegetables</button></form>");
				}
				else{
					/* RequestDispatcher rs=request.getRequestDispatcher("userVegetables.jsp");
					rs.forward(request, response); */
					session.setAttribute("user", type);
					session.setAttribute("email", email);
					out.println("<form action='userVegetables.jsp' method='post'><button>Vegetables</button></form>");
				}
			%>
	</div>
	<nav class="navbar">
	    <div class="navbar-left">
	        <span class="user-type"><%= type %></span>
	    </div>
	    <div class="navbar-center">
	        <span class="user-email"><%= email %></span>
	    </div>
	    <div class="navbar-right">
	        <a href="login.jsp" class="logout-btn">Logout</a>
	    </div>
</nav>

</body>
</html>