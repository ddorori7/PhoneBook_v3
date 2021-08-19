
<%@page import="com.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 요청 객체에서 list 속성 받아오기
List<PhoneBookVO> list = (List<PhoneBookVO>) request.getAttribute("list");
%>

<style>
th{background-color: rgb(209, 209, 209)}



</style>




<form action="<%=request.getContextPath()%>/?a=search" method="POST">
	<label for="keyword">검색어</label> <input type="text" name="keyword"
		id="keyword" /><input type="submit" value="검색" />
</form>

<table border=1>
	<tr>
		<th>이름</th>
		<th>휴대전화</th>
		<th>전화번호</th>
		<th>도구</th>
	</tr>
	<!-- 전화번호 리스트: 목록 -->
	<!-- 루프 시작 -->
	<%for (PhoneBookVO vo : list) {%>
	<tr>
		<td><%=vo.getName()%></td>
		<td><%=vo.getHp()%></td>
		<td><%=vo.getTel()%></td>
		<td colspan="2">
			<!-- 삭제 폼 -->
			<form action="<%=request.getContextPath()%>/phonebook?a=delete"
				method="POST">
				<input type="hidden" name="id" value="<%=vo.getId()%>" /> <input
					type="submit" value="삭제" />
			</form>
		</td>
	</tr>
	<%
	}
	%>
	<!-- 루프의 끝 -->
</table>