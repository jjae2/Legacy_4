<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/table.css" rel="stylesheet">
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<h1>Notice List Page</h1>
<table class="ltb">
<tr class="ltb">
<th class="lth"> 글 번호 </th><th class="lth"> 작성자</th><th class="lth"> 조회 수</th><th class="lth"> 작성 날짜 </th>
</tr>
<c:forEach items="${list}" var="notice">
<tr class="ltr">
<td class="ltd"><a href="./detail?num=${notice.num}">${notice.num}</a></td>
<td class="ltd">${notice.writer}</td>
<td class="ltd">${notice.hit }</td>
<td class="ltd">${notice.regDate}</td>
</tr>
</c:forEach>
</table>
<a href="./add">ADD</a>
</body>
</html>