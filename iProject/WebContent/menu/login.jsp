<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<title>아이넥션소프트</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../css/sub.css" />
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" language="javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" language="javascript">
	$(document).ready(function(){
		

		
		//메인 롤링이미지
		$("#foo3").carouFredSel({
			scroll : {
				duration : 500
			},
			auto: {
				pauseOnHover: 'resume'				
			},
			prev : {
				button		: "#foo4_prev",
				key			: "left",
				items		: 1,
				duration	: 500
			},
			next : {
				button		: "#foo4_next",
				key			: "right",
				items		: 1,
				duration	: 500
			}
		});

	});
</script>




</head>
<body  style="background:url(./images/sub/sub_bg.jpg) repeat-x top center;">
<div id="wrap" >
	<div id="skipToContent"> <a href="#container" accesskey="1" title="브라우저에 따라 Alt + 1 또는 Alt + Shift + 1 또는 Shift + Esc + 1 후 Enter를 치시면 본문내용으로 바로갑니다.">본문 바로가기</a> </div>
	<div id="header" style="background:url(./images/top/top_bg.png) no-repeat;">
		
		<%@ include file="../include/top.jsp" %>
		<%-- //lnb --%> 
	</div>
	<%-- //header --%>
    
    

    
    
    

  
    
    
	
    
    
    
    
    
    
    
    
  <div id="container">
		<div class="sub_vjr"></div>
		<%-- //sub_vjr --%>
		<span class="sub_vjr"><img src="./images/sub/sub_visual_1.png" width="970" height="207" /></span>
		<div class="leftcolumn">
			<div id="snb">
				<h2><img src="./images/menu/left_title_06.jpg" width="200" height="36" /></h2>
				<ul>
				  <li><a href="#" class="on">로그인</a></li>
					<li><a href="member_new.jsp">회원가입</a></li>
					
					
				</ul>
			</div>
			<div><a href="#"><img src="./images/common/left_banner_01.jpg" width="200" height="120" /></a></div>
		</div>
		<%-- //leftcolumn --%>
		
		<div class="rightcolumn">
			<div class="top_tit">
				<h3><img src="./images/menu/title_06_01.jpg" alt="" width="400" height="50" /></h3>
				<div class="location"> <span class="hide">페이지 위치 : </span> <a href="#url"><img src="./images/common/ico_home.jpg" width="11" height="11" style="vertical-align:middle"/> HOME</a> &gt;<strong>로그인</strong> </div>
			</div>
			<%-- //top_tit --%>
			<div class="content">
			 			  <p>&nbsp;</p>
			
    <div></div>
    <div class="login">
    
    
            <form  action="_" method="post">
         
      
    
    
    
    <table width="573" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td width="175" rowspan="3" align="center"><img src="./images/login/LOGINIMG_28.GIF" width="88" height="84" /></td>
    <td width="218" height="26"><img src="./images/login/LOGINIMG_31.GIF" width="115" height="17" /></td>
    <td width="180">&nbsp;</td>
  </tr>
  <tr>
    <td height="30"><img src="./images/login/ID.GIF" width="25" height="13" /> <input type="text" placeholder="아이디를입력해주세요" name="id" /></td>
    <td rowspan="2"><img src="./images/login/BTN_LOGIN.JPG" width="75" height="33" /></td>
  </tr>
  <tr>
    <td><img src="./images/login/PW.GIF" width="25" height="13" />
      <input type="text"placeholder="" name="" /></td>
    </tr>
  <tr>
    <td colspan="3" align="center"><p><br />
        <a href="#"><img src="./images/login/LOGINIMG_43.GIF" width="148" height="10" /></a> <a href="#"><img src="./images/login/LOGINIMG_45.GIF" width="141" height="10" /></a></p></td>
    </tr>
</table>
  </form>
    
    
    </div>
    <div>
    
    
    <ul class="member_txt">
					<li>- 아이디와 비밀번호는 대소문자를 구분합니다.</li>
					<li>- 아이디 또는 비밀번호를 잊으신경우에는 아이디찾기 또는 비밀번호 찾기를 이용해주세요.</li>
				</ul>
    
    
    </div>
    <div></div>
   </div>
   
   <div></div>

			</div>
			<%-- //content --%> 
		</div>
		<%-- //rightcolumn --%> 
		
  </div>
	<%-- //container --%> 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
	
</div>
<%-- //wrap --%>








<div class="footer" id="footer" align="center">
	<%@ include file="../include/footer.jsp" %>

	
</div>
<%-- //footer --%>
</body>
<%-- //bg_w_body --%>
</html>
