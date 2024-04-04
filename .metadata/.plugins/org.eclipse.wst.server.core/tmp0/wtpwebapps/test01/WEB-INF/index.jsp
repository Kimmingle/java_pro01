<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container {width :1400px; }
.page {clear : borth; height :100vh; } <!--클래스(class="page"하면 다 같은 스타일로 적용시킬 수 있음)-->
#page1 {background-color:#ececec;} <!--아이디-->
#page2 {background-color:#4287f5;}
.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>


</head>
<body>

<div id="header">
	<%@ include file="/header.jsp" %>
</div>

<div id="contents">
	<h2>콘텐츠 영역</h2>
		<section class="page" id="page1" style="background-color:#ececec">
			<div style= "width:1400px; margin:0 auto;">
				<h3 class ="page_title">제작자 : ${author }</h3>
			</div>
		</section>
		
		<section class ="page" id="page2" style="background-color:#4287f5">
		<div style= "width:1400px; margin:0 auto;">
			<h3 class ="page_title">임시 서버 애플리케이션 디렉토리  : ${realPath }</h3>
			<h3>main 프로젝트 디렉토리 : ${Path0 }</h3>
			<h3>head 프로젝트 디렉토리 : ${iPath }</h3>
			<h3>header 프로젝트 디렉토리 : ${hPath }</h3>
		</div>
		</section>
		
	<hr>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>



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