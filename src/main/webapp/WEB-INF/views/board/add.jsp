<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${board} Add Page</h1>

<form action="./add" method="post">

Title<input type="text" name="title">
Contents<input type="text" name="contents">
Writer<input type="text" name="writer">

<input type="submit" name="insert">
<button type="submit">ADD</button>
</form>

<script src="../resource/js/add.js"></script>
</body>
</html>