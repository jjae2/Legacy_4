<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/header_css.jsp"></c:import>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
</head>
<body>
<c:import url="./template/header.jsp"></c:import>
<h1>INDEX PAGE!!</h1>

<div>
<c:if test="${ empty member }">
	<a href="./member/login">Login</a>
	<a href="./member/join">Join</a>
	</c:if>
	<c:if test="${not empty member}">
		<h3>${member.name }님 환영합니다.</h3>
	<a href="./member/mypage">My page</a>
	<a href="./member/logout">Logout</a>
	</c:if>
</div>

</body>
</html>