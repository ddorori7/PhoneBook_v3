
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="container-sm">
	<!-- 정적 페이지 인클루드 -->
	<%@ include file="/WEB-INF/views/includes/header.jsp"%>
	<fieldset>
		<legend>
			<h3>
				<svg xmlns="http://www.w3.org/2000/svg" width="29" height="29"
					fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  <path
						d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
  <path
						d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
</svg>
				새 주소 등록
			</h3>
		</legend>

		<form method="POST" action="<%=request.getContextPath()%>/"
			id="insertForm">
			<input type="hidden" name="a" value="insert">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" id="inputGroup-sizing-default"
						for="name">이름</label>
				</div>
				<input class="inputText form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default" type="text"
					name="name" id="name" />
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" id="inputGroup-sizing-default"
						for="hp">휴대전화</label>
				</div>
				<input class="inputText form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default" type="text" name="hp"
					id="hp" />
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" id="inputGroup-sizing-default"
						for="tel">집전화</label>
				</div>
				<input class="inputText form-control"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default" type="text" name="tel"
					id="tel" />
			</div>
			<input type="submit" value="주소 등록"
				class="btn btn-outline-secondary btn-sm float-right" />
		</form>
		<button id="showList"
			class="btn btn-outline-secondary btn-sm float-right">
			<a href="<%=request.getContextPath()%>/?a=list">목록 보기</a>
		</button>
	</fieldset>

</div>
</body>
</html>