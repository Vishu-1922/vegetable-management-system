<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About FarmKart</title>
<style>
body {
    font-family: "Poppins", sans-serif;
    background: linear-gradient(to bottom, #e0f7fa, #ffffff);
    color: #333;
    line-height: 1.6;
    margin: 0;
    padding: 0;
}

.about-content {
    max-width: 800px;
    margin: 50px auto;
    padding: 40px 20px;
    text-align: center;
    background: #ffffff;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    transition: transform 0.3s ease;
}

.about-content:hover {
    transform: translateY(-5px);
}

.about-content h2 {
    color: #388e3c;
    font-size: 2rem;
    margin-bottom: 20px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.about-content p {
    font-size: 1.1rem;
    line-height: 1.8;
    margin-bottom: 30px;
    color: #555;
}

footer {
    background: linear-gradient(90deg, #43a047, #81c784);
    color: #fff;
    text-align: center;
    padding: 25px 0;
    font-weight: 600;
    font-size: 16px;
    box-shadow: 0 -4px 10px rgba(0,0,0,0.2);
    border-top: 3px solid #ffffff;
    transition: 0.3s;
}

footer:hover {
    color: #ffeb3b;
}
</style>
</head>
<body>
<section class="about-content">
    <h2>About the Project</h2>
    <p>
        FarmKart is an online platform dedicated to providing fresh, organic, and high-quality farm produce directly to homes.
        The project was founded by <strong>G Vishnu</strong> in <strong>2025</strong>, after completing his graduation.
    </p>

    <h2>Founder</h2>
    <p>
        <strong>G Vishnu</strong> started FarmKart with the vision to support local farmers and make fresh, healthy food
        accessible to everyone. The platform focuses on sustainable farming, quality produce, and delivering a trustworthy
        experience to customers.
    </p>

    <h2>Mission</h2>
    <p>
        The mission of FarmKart is to connect farmers directly with consumers, promote sustainable agricultural practices,
        and ensure that fresh vegetables, fruits, and other farm products reach your home quickly and safely.
    </p>
</section>

<footer>
    &copy; 2025 FarmKart. All Rights Reserved.
</footer>
</body>
</html>
