
<%@page import="com.phonebook.vo.PhoneBookVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 요청 객체에서 list 속성 받아오기
List<PhoneBookVO> list = (List<PhoneBookVO>) request.getAttribute("list");
%>


<form id="search-form" action="<%=request.getContextPath()%>/?a=search"
	method="POST" class="float-left">
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<label class="input-group-text" id="inputGroup-sizing-default"
				for="keyword">검색어</label>
		</div>
		<input class="inputText form-control"
			aria-label="Sizing example input"
			aria-describedby="inputGroup-sizing-default" type="text"
			name="keyword" id="keyword" /> <input type="submit"
			class="btn btn-outline-secondary btn-sm" value="검색" id="search" />
	</div>
</form>


<table class="table table-striped">
	<thead class="table-dark">
		<tr>
			<th>이름</th>
			<th>휴대전화</th>
			<th>전화번호</th>
			<th>도구</th>
		</tr>
	</thead>
	<tbody>
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
						type="submit" value="삭제" class="btn btn-outline-secondary btn-sm" />
				</form>
			</td>
		</tr>
		<%
		}
		%>
		<!-- 루프의 끝 -->
	</tbody>
</table>
<div class="clearfix">
	<button type="button"
		class="btn btn-outline-secondary btn-sm float-left">
		<a href="<%=request.getContextPath()%>/phonebook?a=insertform">새
			주소 추가 </a>
	</button>
</div>

</div>
