<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FarmKart Navbar</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f6f8;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 40px;
    background-color: #27ae60;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    z-index: 1000;
}

nav #home {
    height: 50px;
    cursor: pointer;
    transition: transform 0.2s ease;
}

nav #home:hover {
    transform: scale(1.05);
}

nav aside {
    display: flex;
    gap: 25px;
}

nav aside a {
    text-decoration: none;
    color: white;
    font-weight: 600;
    font-size: 16px;
    padding: 8px 16px;
    border-radius: 8px;
    transition: background 0.3s ease, transform 0.2s ease;
}

nav aside a:hover {
    background-color: rgba(255,255,255,0.2);
    transform: translateY(-2px);
}

@media (max-width: 900px) {
    nav {
        padding: 10px 20px;
    }
}

@media (max-width: 600px) {
    nav {
        flex-direction: column;
        gap: 10px;
        padding: 10px 20px;
    }

    nav aside {
        gap: 15px;
        flex-wrap: wrap;
        justify-content: center;
    }

    nav #home {
        height: 45px;
    }
}
</style>
</head>
<body>

<nav>
    <img id="home" alt="FarmKart" src="https://sdmntprwestus3.oaiusercontent.com/files/00000000-1ac0-61fd-93eb-2459baaede27/raw?se=2025-10-13T07%3A06%3A13Z&sp=r&sv=2024-08-04&sr=b&scid=6e1f8bc7-023a-5d1a-a9c7-47a734e95200&skoid=3cb6de21-012a-49c9-9402-a1ebf8d0bd06&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-10-12T22%3A26%3A11Z&ske=2025-10-13T22%3A26%3A11Z&sks=b&skv=2024-08-04&sig=TwjBccSDwtF86qGt3VCeTiDpyDApo3mDDnJyU5xFX08%3D">
    <aside>
        <a href="index.html">Home</a>
        <a href="login.jsp">Logout</a>
    </aside>
</nav>

</body>
</html>
