<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<script type="text/javascript">

function logout(){
	var re = confirm("로그아웃 하시겠습니까?");
	if(re){
		location.href = "logoutSubmit";
		return;
	}else{
		return;
	}
	
}
</script>
<div class="gnb">
			<ul>
				<c:choose>
					<c:when test="${!empty session.user_id}">
						<li>[<b>&nbsp;${session.user_id}&nbsp;</b>] 님 반갑습니다.&nbsp;&nbsp;&nbsp;<a href="javascript:logout();">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login">로그인</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="sitemap">사이트맵</a></li>
			</ul>
		</div>
		<%-- //gnb --%>
		 <form name="Form">
		<div id="lnb">
		
        <div style="float:left; padding:0 0 10px 10px;">
        	<a href="mainp"><img src="images/top/logo.jpg" alt="아이넥션소프트" /></a>
        </div>
        <div style="float:right; width:750px; right:10px;" >
			<ul style="text-align:right" >
				<li><a href="vision" onblur="MM_swapImgRestore();" onmouseout="MM_swapImgRestore();" onmouseover="MM_swapImage('lnb1','','images/top/menu1.jpg',1);activeLNB('Lm1');" onfocus="MM_swapImage('lnb1','','images/top/menu1.jpg',1);activeLNB('Lm1');"><img src="images/top/menu1.jpg" alt="회사소개" id="lnb1" name="lnb1" /></a>
					<ul id="Lm1" style="visibility:hidden;" class="sun_lnb">
						<li><a href="vision" class="current">기업비전</a></li>
						<li><a href="record">연혁</a></li>
						<li><a href="group">조직구조</a></li>
                        <li><a href="partner">파트너사/고객사</a></li>
						<li><a href="position" onblur="MM_swapImgRestore();onblueLNB('Lm1');">위치</a></li>
					</ul>
				</li>
				<li><a href="mozart" onblur="MM_swapImgRestore();" onmouseout="MM_swapImgRestore();" onmouseover="MM_swapImage('lnb2','','images/top/menu2.jpg',1);activeLNB('Lm2');" onfocus="MM_swapImage('lnb2','','images/top/menu3.jpg',1);activeLNB('Lm2');"><img src="images/top/menu2.jpg" alt="제품소개" id="lnb2" name="lnb2" /></a>
					<ul id="Lm2" style="visibility:hidden;" class="sun_lnb">
						<li><a href="mozart">MOZART</a></li>
                        <li><a href="fortify" onblur="MM_swapImgRestore();onblueLNB('Lm2');">HP_Fortify</a></li>
				  </ul>
			  </li>
				<li><a href="smartbd" onblur="MM_swapImgRestore();" onmouseout="MM_swapImgRestore();" onmouseover="MM_swapImage('lnb3','','images/top/menu3.jpg',1);activeLNB('Lm3');" onfocus="MM_swapImage('lnb3','','images/top/menu3.jpg',1);activeLNB('Lm3');"><img src="images/top/menu3.jpg" alt="사업영역" id="lnb3" name="lnb3" /></a>
					<ul id="Lm3" style="visibility:hidden;" class="sun_lnb">
						<li><a href="smartbd">스마트 빌딩</a></li>
                        <li><a href="memorial">장사관리프로그램</a></li>
                        <li><a href="mobile">모바일</a></li>
                        <li><a href="callcenter" onblur="MM_swapImgRestore();onblueLNB('Lm3');">콜센터 APP</a></li>
					</ul>
				</li>
				<li><a href="recruitInfo" onblur="MM_swapImgRestore();" onmouseout="MM_swapImgRestore();" onmouseover="MM_swapImage('lnb4','','images/top/menu4.jpg',1);activeLNB('Lm4');" onfocus="MM_swapImage('lnb4','','images/top/menu4.jpg',1);activeLNB('Lm4');"><img src="images/top/menu4.jpg" alt="채용정보" id="lnb4" name="lnb4" /></a>
					<ul id="Lm4" style="visibility:hidden;" class="sun_lnb">
                        <li><a href="recruitInfo">채용정보</a></li>
                       	<li><a href="Recruit_List">채용공고</a></li>
					</ul>
				</li>
                
                <li><a href="noticeList" onblur="MM_swapImgRestore();" onmouseout="MM_swapImgRestore();" onmouseover="MM_swapImage('lnb5','','images/top/menu5.jpg',1);activeLNB('Lm5');" onfocus="MM_swapImage('lnb5','','images/top/menu5.jpg',1);activeLNB('Lm5');"><img src="images/top/menu5.jpg" alt="고객센터" id="lnb5" name="lnb5" /></a>
					<ul id="Lm5" style="visibility:hidden;" class="sun_lnb">
						<li><a href="noticeList">공지사항</a></li>
						<li><a href="QNA_List">Q&A(A/S접수)</a></li>
						<li><a href="FAQ_List">FAQ</a></li>
						<!-- 
						<li><a href="referenceList">자료실</a></li>
						 -->
					</ul>
				</li>
                
                
			</ul>
            </div>
            
           
		</div>
		</form>
		<%-- //lnb --%>