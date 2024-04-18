<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }
.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; }
#page2 { background-color:#42bcf5; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<c:if test="${not empty msg}">
		<div style="width:1400px; margin:0 auto;">${msg }</div>
		</c:if>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"><i class="fas fa-user-plus"></i>회원가입</h3>
			
			<form action="${path0 }/JoinPro.do" method="post" onsubmit="return joinCheck(this)" ><!-- true면 joinpro로 넘어갈것 -->
				<table class="table">
					<tbody>
						<tr>
							<th><label for="id">아이디</label></th>
							<td>
								<input type="text" name="id" id="id" class="form-control" required>
								<button type="button" onclick ="id_check()" class="btn btn-secondary">아이디 중복 검사</button>
								<input type ="hidden" id = "incheck" name ="id_check" >
								<div></div>
							</td>
						</tr>
						<tr>
							<th><label for="pw">비번</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="tel">번호</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control"  required>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  <button type="submit" class="btn btn-secondary">회원가입</button>
				  <button type="reset" class="btn btn-secondary">취소</button>
				</div>
			</form>
			<script>
				function joinCheck(f){
					if(f.pw.value != f.pw2.value){
						alert("비번 다름");
						f.pw.focus();  // <-이거 머임 다시 돌아오는건가
						return false;
					} 
					if(f.idCheck.value != "true"){
						alert("아이디 중복체크 필요");
						return false;
					} 
				}
				function id_check(f){
					// 아이디를 입력받았는지 먼저 검사
					if($("#id").val()==""){   //아이디에 있는 값을 불러와서 공백인지 검색
					alert("아이디 입력 안함");
					$("#id").focus();
					return false;
					}
					var params = { id:$("id").val() }  //파람이라는 객체가 만들어지고 아이디값인 ~~을 저장하는듯?
							
						var kkt = {id :'kkt', pw:'1234', name:'김기태',..}  //json구조..
						<member>		
							<id>kkt</id>
							<pw>1234</pw>
							<name>김기태</name>
						</member>     // 이런 구조로 다른 언어끼리도 데이터를 전달받음
							
					$.ajax({   	//아이디만 보내서 현재문서에서 받음 (일부 데이터만 주고받음 -비동기)
						url: "${path0 }/IdCheck.do",
						type:"post",
						dataType :"json",
						data:params, 
						success : function(data){
							console.log(data.result)     // 콘솔에 출력부터 해보삼
							var idCk=data.result; 
							if (idCk ==false ){
								$("#idCheck").val("true");  //
								$("#msg1").html("<strong>사용가능</strong>");
							}else{
								$("#idCheck").val("false"); 
								$("#msg2").html("<strong>사용불가</strong>");
							}
						}
						
					});
				}
				
				
			</script>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>