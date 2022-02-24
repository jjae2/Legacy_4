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
<table class="dtb">
<tr>
<th class="dth"> 작성자 </th><th class="dth"> 작성 날짜</th><th class="dth"> 글 내용</th>
<tr>
<td class="dtd">${dto.writer}</td>
<td class="dtd">${dto.regDate}</td>
<td class="dtd">${dto.contents}</td>
</tr>
</table>

<button></button><a href="./update?num=${dto.num}">글 수정</a></button>
<button><a href="./delete?num=${dto.num}">글 삭제</a></button>
</body>
</html>