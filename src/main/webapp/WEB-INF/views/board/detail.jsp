<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${board} Detail Page</h1>
<table>
<tr>
<td >${dto.writer}</td>
<td >${dto.contents}</td>
<td >${dto.regDate}</td>
</tr>
</table>
<a href="./list">list</a>
<a href="./update?num=${dto.num}">글 수정</a>
<a href="./delete?num=${dto.num}">글 삭제</a>
<c:if test="${board ne'notice'}"><!-- ne== not equl -->
<a href="./reply?num=${dto.num}">Reply</a>
</c:if>
</body>
</html>