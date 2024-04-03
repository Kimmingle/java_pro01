<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/head.jsp" %>
</head>
<body>
<h1>메인페이지</h1>

<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<h2>콘텐츠 영역</h2>
	<p>${author }</p>
	<hr>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>

<h2>/WebConntent/WEB-INF/index.jsp</h2>
<h2>${author }</h2>
<h2>${realPath }</h2>
<img src="./imges/exo1.jpg" height alt ="">
<h3>버튼</h3>
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-dark">Dark</button>

<button type="button" class="btn btn-link">Link</button>

<a href="./sub/temp1.jsp" class="btn btn-danger" >임시 페이지</a>


<button type="button" class="btn btn-outline-primary">Primary1</button>
<button type="button" class="btn btn-outline-secondary">Secondary1</button>
<button type="button" class="btn btn-outline-success">Success1</button>
<button type="button" class="btn btn-outline-danger">Danger1</button>
<button type="button" class="btn btn-outline-warning">Warning1</button>
<button type="button" class="btn btn-outline-info">Info1</button>
<button type="button" class="btn btn-outline-light">Light1</button>
<button type="button" class="btn btn-outline-dark">Dark1</button>
</body>
</html>