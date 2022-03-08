<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<a href="./reply?num=${dto.num}">Reply</a>
</body>
</html>