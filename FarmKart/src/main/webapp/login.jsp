<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: url('https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background: rgba(255, 255, 255, 0.95);
    padding: 40px 35px;
    border-radius: 15px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.25);
    width: 400px;
    display: flex;
    flex-direction: column;
    align-items: center;
    position: absolute;
    right: 150px;
    bottom: 200px;
}

h1 {
    margin-bottom: 25px;
    color: #00796b;
    font-size: 28px;
    text-align: center;
}

label {
    width: 100%;
    text-align: left;
    margin-bottom: 6px;
    font-weight: 600;
    color: #555;
}

input, select {
    width: 100%;
    padding: 10px 12px;
    margin-bottom: 18px;
    border: 1px solid #bdbdbd;
    border-radius: 8px;
    font-size: 14px;
}

input:focus, select:focus {
    border-color: #00796b;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 121, 107, 0.5);
}

button {
    width: 100%;
    padding: 12px;
    background-color: #00796b;
    color: #ffffff;
    font-size: 16px;
    font-weight: 600;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

button:hover {
    background-color: #004d40;
    transform: translateY(-2px);
}

form select {
    cursor: pointer;
}

/* Style for the registration sentence */
p {
    margin-top: 20px;
    font-size: 14px;
    color: #555;
    text-align: center;
}

p a {
    color: #00796b;
    font-weight: 600;
    text-decoration: none;
    padding: 4px 8px;
    border-radius: 5px;
    transition: all 0.3s ease;
}

p a:hover {
    background-color: #00796b;
    color: #fff;
    text-decoration: none;
    box-shadow: 0 4px 10px rgba(0,0,0,0.15);
    transform: translateY(-2px);
}


</style>
</head>
<body>
	<form action="login.jsp" method="post">
		<h1>Login page</h1>
		
		<label>email</label>
		<input type="email" name="lemail" placeholder="email">
		
		<label>password</label>
		<input type="password" name="lpassword" placeholder="password">
		
		<label for="usertype">User Type</label>
		    <select id="usertype" name="lusertype" required>
		        <option value="">--Select Type--</option>
		        <option value="Admin">Admin</option>
		        <option value="User">User</option>
		    </select>
		
		<button>Login</button>
		<p>Don't have an account? <a href="register.jsp">Register here</a></p>
	</form>
	
	
	<%
		String email=request.getParameter("lemail");
		String password=request.getParameter("lpassword");
		String type=request.getParameter("lusertype");
		session.setAttribute("email", email);
		session.setAttribute("type", type);
		
		System.out.println(type+"-----");
		
		if(type!=null){
			if(type.equals("Admin")){
				String qry="select * from admin_table";
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
				PreparedStatement ps=con.prepareStatement(qry);
				ResultSet rs=ps.executeQuery();
				rs.next();
				String dbEmail=rs.getString(2);
				String dbPassword=rs.getString(3);
				if(email.equals(dbEmail) && password.equals(dbPassword)){
					RequestDispatcher rd=request.getRequestDispatcher("product.jsp");
					rd.forward(request, response);
				}
				
			}
			else if(type.equals("User")){
				String qry="select * from user_table";
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
				PreparedStatement ps=con.prepareStatement(qry);
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()){
					String dbName=rs.getString(1);
					String dbEmail=rs.getString(2);
					String dbPassword=rs.getString(3);
					if(email.equals(dbEmail) && password.equals(dbPassword)){
						RequestDispatcher rd=request.getRequestDispatcher("product.jsp");
						rd.forward(request, response);
						session.setAttribute("username",dbName );
					}
				}
			
			}
		}
			
	%>
</body>
</html>