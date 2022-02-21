<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Notice List Page</h1>
<table>
<tr>
<th>글 번호</th><th>작성자</th><th>조회 수</th>
</tr>
<c:forEach items="${list}" var="notice">
<tr>
<td><a href="./detail?num=${notice.num}">${notice.num}</a></td>

<td>${notice.writer}</td>
<td>${notice.hit }</td>
</tr>
</c:forEach>
</table>
<a href="./add">ADD</a>
</body>
</html>