
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
input.inputText {
	width: 90%;
	margin-top: 2px;
}
</style>


<!-- 정적 페이지 인클루드 -->
<%@ include file="/WEB-INF/views/includes/header.jsp"%>

<h3>새 주소 등록</h3>

<div
	style="padding: 15px; border: 1px solid black; width: 200px; border-radius: 10px;">
	<form method="POST" action="<%=request.getContextPath()%>/">
		<input type="hidden" name="a" value="insert"> <label
			for="name">이름</label><br /> <input class="inputText" type="text"
			name="name" id="name" /><br /> <label for="hp">휴대전화</label><br />
		<input class="inputText" type="text" name="hp" id="hp" /><br /> <label
			for="tel">집전화</label><br /> <input class="inputText" type="text"
			name="tel" id="tel" /><br /> <input type="submit" value="주소 등록"
			style="margin-top: 10px;" />
	</form>
</div>
<p>
	<a href="<%=request.getContextPath()%>/?a=list">목록 보기</a>
</p>
</body>
</html>