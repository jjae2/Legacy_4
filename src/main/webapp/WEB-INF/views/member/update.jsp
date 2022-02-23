<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>My page 입니다</h1>
<form action="./update" method="post">
<input type="hidden" name="id" readonly="readonly" value="${dto.id}">
비밀번호<input type="password" name="pw" value="${dto.pw}">
전화번호<input type="text" name="phone" value="${dto.phone}">
이메일<input type="text" name="email" value="${dto.email}">
	
	 <input type="submit" name="INSERT">
	 </form>

</body>
</html>