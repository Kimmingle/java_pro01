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
#id { width:800px; float:left; margin-right:10px; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<c:if test="${not empty msg}">
		<div style="width:1400px; margin:0 auto; color:red; padding-top:32px; text-align:center">${msg }</div>
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
								<input type ="hidden" id = "inCheck" name="idCheck" value="false" >
								<div id="msg1"></div>
							</td>
						</tr>
						<tr>
							<th><label for="pw">비번</label></th>
							<td>
								<input type="password" name="pw" id="pw" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="name">이름</label></th>
							<td>
								<input type="text" name="name" id="name" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="age">나이</label></th>
							<td>
								<input type="text" name="age" id="age" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="email">이메일</label></th>
							<td>
								<input type="text" name="email" id="email" class="form-control" required>
							</td>
						</tr>
						<tr>
							<th><label for="tel">사는곳</label></th>
							<td>
								<input type="text" name="visited" id="visited" class="form-control"  required>
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
				function id_check(){
					// 아이디를 입력받았는지 먼저 검사
					if($("#id").val()==""){   //아이디에 있는 값을 불러와서 공백인지 검색
						alert("아이디 입력 안함");
						$("#id").focus();
						return false;
					}
					var params = { id:$("#id").val() };  //파람이라는 객체가 만들어지고 아이디값인 ~~을 저장하는듯?
							
						//var kkt = {id :'kkt', pw:'1234', name:'김기태',..}  //json구조..
						//<member>		
							//<id>kkt</id>
							//<pw>1234</pw>
							//<name>김기태</name>
						//</member>     // 이런 구조로 다른 언어끼리도 데이터를 전달받음
							
					$.ajax({   	//아이디만 보내서 현재문서에서 받음 (일부 데이터만 주고받음 -비동기)
						url: "${path0 }/IdCheck.do",    //ajax 요청할 매핑된 url 입력
						type:"post",					//HTTP 통신의 종류를 설정
						dataType :"json",				//ajax를 통해 리턴받을 데이터의 타입을 설정                 // 그니까 걍 얘네들은 어디에서 뭘 받을건지 설정해주는 애들임
						data:params, 					//URL 파라미터를 통해 보낼 데이터 종류 
						success : function(data){		//ajax 통신이 성공했을 때 실행되는 함수
							
							var idCk=data.result;    // 나는 IdCheck.do에서 result가 아니라 다른 값으로 지정을 해둬서 idCk에 아무 값도 안담겼던거임..
							if (idCk ==false ){		 // false면  dao에 없다는거임= 사용할 수 있는 아이디
								$("#idCheck").val("true"); 
								$("#msg1").html("<strong>사용가능</strong>");   //msg1에 사용가능 담음
							}else{
								$("#idCheck").val("false"); 
								$("#msg1").html("<strong>사용불가</strong>");    //msg1에 사용불가 담음
							}
						}
						
					});  // 그래서 ajax는 자바스크립트에서 jquery를 이용한 개념? 그럼 json은 뭔데 
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