<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resources/css/detail.css" rel="stylesheet">
</head>
<body>
<h1>Notice Detail Page</h1>
<table >
<tr>
<th > 제목 </th><th> 글 내용</th><th > 작성자</th>
<tr>
<td >${dto.title}</td>
<td >${dto.contents}</td>
<td >${dto.writer}</td>
</tr>
</table>

<button><a href="./update?num=${dto.num}">글 수정</a></button>
<button><a href="./delete?num=${dto.num}">글 삭제</a></button>
</body>
</html>