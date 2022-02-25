<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/header_css.jsp"></c:import>
<link href="../resources/css/table.css" rel="stylesheet">
<link href="../resources/css/list.css" rel="stylesheet">
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="table-container">
		<h1>Notice List Page</h1>
		<div class="search">
			<form action="./list" method=get>
				<fieldset>
					<select name="kind">
						<option value="col1">제목</option>
						<option value="col2">내용</option>
						<option value="col3">작성자</option>
					</select> <input type="text" name="search" value="${pager.search}">
					<button type="submit">검 색</button>
				</fieldset>
			</form>

		</div>
		<table class="table-basic">

			<tr>
				<th>글 번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회 수</th>
				<th>작성 날짜</th>
			</tr>

			<c:forEach items="${list}" var="notice">
				<tr>
					<td class="td2"><a href="./detail?num=${notice.num}">${notice.num}</a></td>
					<td>${notice.title}</td>
					<td>${notice.writer}</td>
					<td>${notice.hit }</td>
					<td>${notice.regDate}</td>
				</tr>
			</c:forEach>
		</table>

		<div>
			<c:if test="${pager.pre}">
				<a href="./list?page=${pager.startNum-1}">PREVIEW</a>
			</c:if>
			<c:forEach begin="${pager.startNum }" end="${pager.lastNum}" var="i">
				<a href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
			</c:forEach>
			<c:if test="${pager.next}">
				<a href="./list?page=${pager.lastNum+1}">NEXT</a>
			</c:if>
		</div>

		<div>
			<a href="./add">ADD</a>
		</div>
	</div>

</body>
</html>