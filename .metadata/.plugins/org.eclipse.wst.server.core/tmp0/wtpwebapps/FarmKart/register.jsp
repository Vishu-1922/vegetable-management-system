<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration - FarmKart</title>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: url('https://media.istockphoto.com/id/1468757785/photo/human-resources-and-management-concept-employee-must-complete-the-online-survey-form-marked.jpg?s=1024x1024&w=is&k=20&c=etwE-xKS1ysCnObTBDP660x4HwHAWK0Qr2htbjwNN4E=') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    color: #333;
}

form {
    background: rgba(255, 255, 255, 0.95);
    padding: 35px 30px;
    border-radius: 12px;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
    width: 340px;
    position: absolute;
    left: 50px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333333;
    font-weight: 600;
    font-size: 22px;
}

label {
    display: block;
    margin-bottom: 4px;
    font-weight: 500;
    color: #555555;
    font-size: 14px;
}

input, select, textarea {
    width: 100%;
    padding: 10px 12px;
    margin-bottom: 12px;
    border: 1px solid #cccccc;
    border-radius: 6px;
    font-size: 14px;
    color: #333333;
    box-sizing: border-box;
}

input:focus, select:focus, textarea:focus {
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
}

button {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: #ffffff;
    border: none;
    border-radius: 6px;
    font-weight: bold;
    cursor: pointer;
    font-size: 15px;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

button:hover {
    background-color: #0056b3;
    transform: scale(1.02);
}

small {
    display: block;
    color: #888888;
    margin-top: -10px;
    margin-bottom: 8px;
    font-size: 12px;
}

.gender-options {
    display: flex;
    gap: 10px;
    margin-bottom: 12px;
}

.gender-options label {
    margin-bottom: 0;
    font-weight: 500;
    font-size: 14px;
}

textarea {
    resize: none;
}

.login-text {
    text-align: center;
    margin-top: 15px;
    font-size: 14px;
    color: #555;
}

.login-text a {
    color: #007bff;
    font-weight: 600;
    text-decoration: none;
    transition: color 0.3s ease, transform 0.2s ease;
}

.login-text a:hover {
    color: #0056b3;
    transform: scale(1.05);
}

@media (max-width: 600px) {
    form {
        width: 90%;
        padding: 30px 20px;
    }
}
</style>
</head>
<body>
    <form action="" method="post">
        <h2>Registration Form</h2>

        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter password" required>
        
        <label for="phone">Phone Number</label>
        <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required pattern="[0-9]{10}">
        <small>Format: 10 digits</small>
        
        <label for="address">Address</label>
        <textarea id="address" name="address" placeholder="Enter your address" rows="3" required></textarea>

        <label for="usertype">User Type</label>
        <select id="usertype" name="usertype" required>
            <option value="">--Select Type--</option>
            <option value="Admin">Admin</option>
            <option value="User">User</option>
        </select>

        <button type="submit">Register</button>    
        <p class="login-text">If you’re already registered, <a href="login.jsp">Login here</a></p>
    </form>
    
    <%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String phone=request.getParameter("phone");
    String address=request.getParameter("address");
    String type=request.getParameter("usertype");
    
    if(type != null){ 

        String admin="Admin";
        String user="User";
        
        if (type.equals(admin)) {
            String qry="insert into admin_table values(?,?,?,?,?,?)";
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, type);
            
            ps.executeUpdate();
        }
        else if(type.equals(user)){
            String qry="insert into user_table values(?,?,?,?,?,?)";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, type);
            
            ps.executeUpdate();
        }
        
        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
    }
%>

</body>
</html>
