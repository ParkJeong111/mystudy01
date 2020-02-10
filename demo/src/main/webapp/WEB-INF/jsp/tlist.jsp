<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
<thead>
<tr>
<th>제목 </th><th>내용</th><th>작성일</th>
</tr>
</thead>

<tbody>
<c:forEach var="list" items="${list}">
<tr>
<td>${list.title }</td>
<td>${list.cont }</td>
<td>${list.tdate }</td>
<tr>


</c:forEach>


</tbody>
</table>
</body>
</html>