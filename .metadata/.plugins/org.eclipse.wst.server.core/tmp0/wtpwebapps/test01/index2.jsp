<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
	
    
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 연습</title>
   
    <style>
    * { margin: 0; padding: 0; }
    ul { list-style: none; }
    a { text-decoration: none; color:#333; }
    #gnb { width:1600px; margin: 20px auto; }
    #gnb > ul > li { float:left; width: 200px; }
    #gnb > ul > li > a { font-size:20px; font-weight: bold; 
    display:block; text-align: center; line-height: 42px; border-bottom:3px solid #333; }
    #gnb > ul > li > ul { display:none; }
    #gnb > ul > li:hover > ul { display:block; }
    #gnb ul li a { display:block; text-align: center; line-height: 32px; }
    #gnb > ul > li:hover > a { color:deepskyblue;  border-bottom:3px solid deepskyblue; }
    #right > nav { float: right;}
    </style>
    
    <nav id="right">
    	<a href="login.jsp" >로그인</a>
    </nav>
</head>
<body>
	<ul>
        <h1 style="text-align: center;">풍남동</h1>
    </ul>
    <nav id="gnb">
        <ul>
            <li>
                <a href="">풍남동 소개</a>
                <ul>
                    <li><a href="introduce.jsp">풍남동을 소개합니다. </a></li>
                </ul>
            </li>
            <li>
                <a href="">문화 유적</a>
                <ul>
                    <li><a href="CulturalRelics_ggj.jsp">경기전 </a></li>
                    <li><a href="CulturalRelics_jlgy.jsp">전라감영 </a></li>
                    <li><a href="CulturalRelics_jdcc.jsp">전동성당 </a></li>
                    <li><a href="CulturalRelics_pnm.jsp">풍남문 </a></li>
                    <li><a href="CulturalRelics_omd.jsp">오목대 </a></li>
                    <li><a href="CulturalRelics_hg.jsp">향교</a></li>
                </ul>
            </li>
            <li>
                <a href="">문화 시설</a>
                <ul>
                    <li><a href="CulturalFacility_ka.jsp">강암서예관 </a></li>
                    <li><a href="CulturalFacility_cmh.jsp">최명희문학관 </a></li>
                    <li><a href="CulturalFacility_hv.jsp">전주한목마을 역사관</a></li>

                </ul>
            </li>
            <li>
                <a href="">공연,전시시설</a>
                <ul>
                    <li><a href="Exhibition_ah.jsp">전북예술회관  </a></li>
                    <li><a href="Exhibition_hb.jsp">한벽문화관  </a></li>
                    <li><a href="Exhibition_st.jsp">창작소극장 </a></li>

                </ul>
            </li>
            <li>
                <a href="">체험 정보</a>
                <ul>
                    <li><a href="Experience_hb.jsp">한복체험</a></li>
                    <li><a href="Experience_craft.jsp">전통공예</a></li>
                    <li><a href="Experience_tgame.jsp">전통놀이 체험</a></li>
                    <li><a href="Experience_mannrer.jsp">예절체험</a></li>
                </ul>
            </li>
            <li>
                <a href="">교육 컨텐츠</a>
                <ul>
                    <li><a href="Education_cu.jsp">청을전통 문화원</a></li>
                    <li><a href="Education_pan.jsp">판소리/민요/풍물 배우기</a></li>
                    <li><a href="Education_dan.jsp">전통춤 배우기</a></li>
                </ul>
            </li>
            <li>
                <a href="">커뮤니티</a>
                <ul>
                    <li><a href="Commu_guide.jsp">안내사항</a></li>
                    <li><a href="Commu_notice.jsp">공지사항</a></li>
                    <li><a href="Commu_qna.jsp">묻고답하기</a></li>
                </ul>
            </li>
            <li>
                <a href="">기타 정보</a>
                <ul>
                    <li><a href="Other_at.jsp">풍남동 편의시설 정보</a></li>
                    <li><a href="Other_car.jsp">공유 운송차 '다가온'</a></li>
                    <li><a href="Other_parking.jsp">주차 시설</a></li>

                </ul>
            </li>
        </ul>
    </nav>
    
</body>

<nav>
    <div class="img1" style="width: 500px;  margin-right: auto; margin-left: auto; margin-top:300px; " >
		<h3></h3>
        
		<img src="img01/한옥마을.jpg" alt="" class="img1"/>
	</div>
    </nav> 
</html>