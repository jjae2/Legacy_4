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
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<h1>bankbook list page</h1>
	
<table class="ltb">
<tr>
<th class="lth">상품 번호</th><th class="lth">상품명</th><th class="lth">이자율</th><th class="lth">판매</th>
</tr>
<c:forEach items="${list}" var="book">
<tr class="ltr">
<td class="ltd ltd2">${book.bookNumber}</td>
<td class="ltd"><a href="./detail?bookNumber=${book.bookNumber}">${book.bookName}</a></td>
<td class="ltd">${book.bookRate}</td>
<td class="ltd ">${book.bookSale}</td>
</tr>
</c:forEach>
</table>

<div>
<c:if test="${pager.pre}">
<a href="./list?page=${pager.startNum-1}">PREVIEW</a>
</c:if>
<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var ="i">
<a href="./list?page=${i}">${i}</a>
</c:forEach>
<c:if test="${pager.next}">
         <a href="./list?page=${pager.lastNum+1}">NEXT</a>
      </c:if>
</div>


<button><a href="./add">A D D</a></button>

</body>
</html>