<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미니 TO-DO LIST 구현 과제</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/test.css">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/test.js"></script>
</head>
<body>
	<input type="hidden" id="root" value="${pageContext.request.contextPath}" />
	<input type="hidden" id="sort" value="${sort}" />
	<div id="wrap">
		<h1>미니 TO-DO LIST 구현 과제</h1>
		<form>
			<table id="add_table">
				<tr>
					<th>일정&nbsp;<input type="date" id="date" name="date"></th>
					<th>내용&nbsp;<input type="text" id="content" name="content"></th>
					<td><input type="button" value="추가" id="btn_add"></td>
				</tr>
			</table>
		</form>
		<hr id="refresh_point">
		<table id="test_table">
			<tr>
				<td colspan="5">
					<button id="btn_sort1">일정순 보기</button>
					<button id="btn_sort2">항목순 보기</button>
				</td>
			</tr>
			<tr>
				<th id="th_tno">번호</th>
				<th id="th_content">내용</th>
				<th id="th_date">일정</th>
				<th id="th_reg_date">등록일</th>
				<th id="th_remove"></th>
			</tr>
			<c:if test="${testList.size() == 0}">
				<tr>
					<td colspan="5"><h3>등록한 일정이 없습니다.</h3></td>
				</tr>
			</c:if>
			<c:forEach var="test" items="${testList}">
				<tr>
					<td>${test.tno}</td>
					<td>${test.content}</td>
					<td>${test.date}</td>
					<td>${test.reg_date}</td>
					<td><button class="btn_remove">삭제</button><input type="hidden" value="${test.tno}"></td>
				</tr>
			</c:forEach>
		</table>
		<hr>
	</div>
</body>
</html>