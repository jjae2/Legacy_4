<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!-- header 시작-->
 <header class="header">
    <nav class="nav_main">
      <ul>
        <li><a href="/s1/">Home</a></li>
        <li><a href="/s1/notice/list">Notice</a></li>
        <li><a href="/s1/qna/list">QnA</a></li>
        <li><a href="/s1/bankbook/list">Product</a></li>
      </ul>
  </nav>
  <nav class="nav_sub">
    <ul>
    <c:choose>
    <c:when test="${not empty member}">
      <li><a href="/s1/member/mypage">Mypage</a></li>
      <li><a href="/s1/member/logout">Logout</a></li>
      </c:when>
       <c:otherwise>
      <li><a href="/s1/member/login">Login<span class="material-icons">login</span></a></li>
      <li><a href="/s1/member/join">Join</a></li>
      </c:otherwise>
      </c:choose>
    </ul>
  </nav>
  </header>
  <!-- header 끝-->