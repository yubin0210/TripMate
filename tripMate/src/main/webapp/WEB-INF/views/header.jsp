<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 기본 리셋 */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* 전체 스타일 */
body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #f4f4f4;
    color: #333;
}

/* 네비게이션 바 */
nav {
    background: #35424a;
    color: #ffffff;
    padding: 10px 20px;
}

nav .logo a {
    font-size: 1.5em;
    color: #ffffff;
    text-decoration: none;
}

nav ul {
    list-style: none;
    display: flex;
    justify-content: flex-end;
}

nav ul li {
    margin-left: 20px;
}

nav ul li a {
    color: #ffffff;
    text-decoration: none;
}

/* 메인 컨텐츠 */
.hero {
    background: url('https://example.com/your-image.jpg') no-repeat center center/cover;
    height: 60vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: #ffffff;
}

.hero h1 {
    font-size: 2.5em;
    color: black;
}

.hero p {
    font-size: 1.2em;
    color : black;
}

.hero form {
    margin-top: 20px;
}

.hero input[type="text"] {
    padding: 10px;
    border: none;
    border-radius: 5px;
    width: 250px;
}

.hero button {
    padding: 10px 15px;
    background: #e8491d;
    border: none;
    border-radius: 5px;
    color: #ffffff;
    cursor: pointer;
}

/* 기능 소개 */
.features {
    display: flex;
    justify-content: space-around;
    padding: 20px;
    background: #ffffff;
    height: 200px;
}

.features .feature {
    flex: 1;
    margin: 0 10px;
    padding: 20px;
    background: #eaeaea;
    border-radius: 5px;
    text-align: center;
}

/* Footer */
footer {
    text-align: center;
    padding: 10px;
    background: #35424a;
    color: #ffffff;
    position: relative;
    bottom: 0;
    width: 100%;
    height: 100px;
}

</style>
</head>
<body>
	<nav>
		<div class="logo">
			<a href="${cpath }">TripMate</a>
		</div>
		<ul>
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="signup.jsp">회원가입</a></li>
		</ul>
	</nav>

</body>
</html>