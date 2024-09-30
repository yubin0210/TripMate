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