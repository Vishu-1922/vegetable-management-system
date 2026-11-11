<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
body {
  margin: 0;
  font-family: "Poppins", sans-serif;
  background-color: #f2f2f2;
}

.navbar {
  width: 100%;
  background: linear-gradient(90deg, #000000, #1b1b1b);
  color: white;
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 18px 40px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.4);
  position: fixed;
  top: 0;
  left: 0;
  z-index: 1000;
}

.navbar h1 {
  font-size: 22px;
  letter-spacing: 1px;
  margin: 0;
  font-weight: 600;
}

.right {
  display: flex;
  gap: 15px;
}

.logout-btn {
  background-color: #27ae60;
  color: white;
  border: none;
  padding: 10px 18px;
  border-radius: 6px;
  font-size: 14px;
  cursor: pointer;
  font-weight: 500;
  letter-spacing: 0.3px;
  transition: all 0.3s ease;
}

.logout-btn:hover {
  background-color: #1e8449;
  transform: translateY(-2px);
}

.right a:first-child .logout-btn {
  background-color: #e74c3c;
}

.right a:first-child .logout-btn:hover {
  background-color: #c0392b;
}

a {
  text-decoration: none;
}

@media (max-width: 768px) {
  .navbar {
    flex-direction: column;
    align-items: flex-start;
    padding: 15px 25px;
  }

  .right {
    width: 100%;
    justify-content: flex-start;
    margin-top: 10px;
    gap: 10px;
  }

  .logout-btn {
    width: auto;
    padding: 10px 14px;
    font-size: 13px;
  }
}

</style>
</head>
<body>

  <div class="navbar">
    <h1>Admin Dashboard</h1>
    <div class="right">
    	<a href="login.jsp"><button class="logout-btn" style="background-color: red;">Logout</button></a>
    	<a href="adminVegetables.jsp"><button class="logout-btn">Admin</button></a>
    </div>
    
  </div>

</body>
</html>
