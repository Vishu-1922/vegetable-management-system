<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navBar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FarmKart Team</title>
<style>
body {
    font-family: 'Arial', sans-serif;
    background: #f2f2f2;
    margin: 0;
    padding: 0;
    color: #333;
}

.team-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 50px;
    max-width: 1200px;
    margin: 60px auto;
    padding: 0 20px;
}

.founder-member {
    background: gray;
    color: #fff;
    padding: 40px 30px;
    border-radius: 25px;
    width: 300px;
    text-align: center;
    box-shadow: 0 15px 35px rgba(0,0,0,0.2);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
}

.founder-member:hover {
    transform: translateY(-12px);
    box-shadow: 0 25px 50px rgba(0,0,0,0.3);
}

.founder-member h1 {
    font-size: 2rem;
    margin-bottom: 15px;
}

.founder-member h2 {
    font-size: 1.5rem;
    margin-bottom: 12px;
}

.founder-member p {
    font-size: 1rem;
    margin: 5px 0;
}

.co-founders-row {
    display: flex;
    gap: 30px;
    flex-wrap: wrap;
    justify-content: center;
}

.co-founder-member {
    background: #42a5f5;
    color: #fff;
    padding: 30px 25px;
    border-radius: 20px;
    width: 260px;
    text-align: center;
    box-shadow: 0 8px 25px rgba(0,0,0,0.15);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.co-founder-member:hover {
    transform: translateY(-8px);
    box-shadow: 0 18px 40px rgba(0,0,0,0.25);
}

.co-founder-member h1 {
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.co-founder-member h2 {
    font-size: 1.3rem;
    margin-bottom: 10px;
}

.co-founder-member p {
    font-size: 0.95rem;
    margin: 5px 0;
}

@media (max-width: 900px) {
    .co-founders-row {
        gap: 20px;
    }
}

@media (max-width: 600px) {
    .co-founders-row {
        flex-direction: column;
        align-items: center;
    }
}
</style>
</head>
<body>

<div class="team-container">
    <div class="founder-member">
        <h1>Founder</h1>
        <h2>G Vishnu</h2>
        <p>Phone: 8639963957</p>
        <p>Email: goramvishnu@gmail.com</p>
    </div>

    <div class="co-founders-row">
        <div class="co-founder-member">
            <h1>Co-Founder</h1>
            <h2>Ashwin Reddy</h2>
            <p>Phone: 9876543210</p>
            <p>Email: ashwin.reddy@example.com</p>
        </div>

        <div class="co-founder-member">
            <h1>Co-Founder</h1>
            <h2>Priya Sharma</h2>
            <p>Phone: 9123456780</p>
            <p>Email: priya.sharma@example.com</p>
        </div>

        <div class="co-founder-member">
            <h1>Co-Founder</h1>
            <h2>Karan Mehta</h2>
            <p>Phone: 9988776655</p>
            <p>Email: karan.mehta@example.com</p>
        </div>
    </div>
</div>

</body>
</html>
