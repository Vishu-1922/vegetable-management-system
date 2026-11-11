<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FarmKart</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: "Poppins", sans-serif;
    background: linear-gradient(to bottom, #e0f7fa, #ffffff);
    color: #333;
}

/* Navbar */
nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: linear-gradient(90deg, #43a047, #66bb6a);
    padding: 15px 60px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.25);
    position: sticky;
    top: 0;
    z-index: 100;
    border-bottom: 3px solid #ffffff;
    border-radius: 0 0 15px 15px;
}

nav img {
    width: 90px;
    height: 90px;
    border-radius: 50%;
    border: 4px solid #fff;
    box-shadow: 0 4px 12px rgba(255,255,255,0.5);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

nav img:hover {
    transform: scale(1.1);
    box-shadow: 0 6px 20px rgba(0,0,0,0.3);
}

nav aside {
    display: flex;
    align-items: center;
    gap: 30px;
}

nav aside a {
    text-decoration: none;
    color: #ffffff;
    font-weight: 600;
    font-size: 18px;
    padding: 10px 18px;
    border-radius: 8px;
    transition: all 0.3s ease;
}

nav aside a:hover {
    background: rgba(255,255,255,0.25);
    color: #ffeb3b;
    transform: scale(1.05);
    box-shadow: 0 0 8px rgba(0,0,0,0.3);
}
</style>
</head>
<body>

<nav>
    <img alt="FarmKart" src="https://sdmntprwestus3.oaiusercontent.com/files/00000000-1ac0-61fd-93eb-2459baaede27/raw?se=2025-10-13T07%3A06%3A13Z&sp=r&sv=2024-08-04&sr=b&scid=6e1f8bc7-023a-5d1a-a9c7-47a734e95200&skoid=3cb6de21-012a-49c9-9402-a1ebf8d0bd06&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-10-12T22%3A26%3A11Z&ske=2025-10-13T22%3A26%3A11Z&sks=b&skv=2024-08-04&sig=TwjBccSDwtF86qGt3VCeTiDpyDApo3mDDnJyU5xFX08%3D">
    <aside>
        <a href="index.html">Home</a> 
    </aside>
</nav>

</body>
</html>
