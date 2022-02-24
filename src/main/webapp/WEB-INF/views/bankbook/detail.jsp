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

<h1>bankbook detail page</h1>
<table class="dtb">
<tr>
<th class="dth"> 상품 이름 </th><th class="dth"> 상품 내용</th>
<tr>
<td class="dtd">${dto.bookName}</td>
<td class="dtd">${dto.bookContents}</td>
</tr>
</table>

<button class="b1"><a href="./update?bookNumber=${dto.bookNumber}">Update</a></button>
<button class="b1"><a href="./delete?bookNumber=${dto.bookNumber}">Delete</a></button>
<button class="b1"><a href="./list">List</a></button>
</body>
</html>