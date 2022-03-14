<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${board}DetailPage</h1>
	<table>
		<tr>
			<td>${dto.writer}</td>
			<td>${dto.contents}</td>
			<td>${dto.regDate}</td>
		</tr>
		</table>
<div>
   <c:forEach items="${dto.fileDTOs}" var="f"> <!-- f라는 변수에 filedtos를 담는다 -->
 <a href="./fileDown?fileNum=${f.fileNum}">${f.oriName}</a>
		<!-- image태그가 아니라 a태그 씀. 첨부파일이 꼭 이미지일 경우는 없기때문 -->
		<!-- ${board} 를 써주는 이유는 notice일떄와 qna일때 저장되는 폴더가 다르기때문-->
	</c:forEach>
</div>
	<a href="./list">list</a>
	<a href="./update?num=${dto.num}">글 수정</a>
	<a href="./delete?num=${dto.num}">글 삭제</a>
	<c:if test="${board ne'notice'}">
		<!-- ne== not equl -->
		<a href="./reply?num=${dto.num}">Reply</a>
	</c:if>
</body>
</html>