<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>bankbook Update page</h1>

	<form action="./update" method="post">
		<input type="hidden" readonly="readonly" name="bookNumber" value="${dto.bookNumber}">
		BookName<input type="text" name="bookName" value="${dto.bookName}"> 
		BookContents<textarea name="bookContents" rows="10" cols="">${dto.bookContents}</textarea>
		BookRate<input type="text" name="bookRate" value="${dto.bookRate}">
		 BookSale 
		 판매    <input type="radio" name="bookSale" value="1">
		 판매중지 <input type="radio" name="bookSale" value="0">
		 <input type="submit" name="INSERT">
		<button type="submit">ADD</button>

	</form>
</body>
</html>