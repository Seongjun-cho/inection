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
				  <li><a href="login.jsp">로그인</a></li>
					<li><a href="#" class="on">회원가입</a></li>
					
					
				</ul>
			</div>
			<div><a href="#"><img src="./images/common/left_banner_01.jpg" width="200" height="120" /></a></div>
		</div>
		<%-- //leftcolumn --%>
		
		<div class="rightcolumn">
			<div class="top_tit">
				<h3><img src="./images/menu/title_06_02.jpg" alt="" width="400" height="50" /></h3>
				<div class="location"> <span class="hide">페이지 위치 : </span> <a href="#url"><img src="./images/common/ico_home.jpg" width="11" height="11" style="vertical-align:middle"/> HOME</a> &gt;<strong>회원가입</strong> </div>
			</div>
			<%-- //top_tit --%>
			<div class="content">
			 			
					<p>-모든항목은 필수 항목입니다.</p>
					
				
                            <p>
                            
                            
                            <table class="b_view" cellspacing="0" summary="">
						<caption>
						</caption>
						<colgroup>
						<col width="17%" />
						<col width="*" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름</th>
								<td><input type="text" class="input02" title="이름 입력" /></td>
							</tr>
							<tr>
								<th scope="row">아이디</th>
								<td><input type="text" class="input02" title="대표자명 입력" />
									<a href="#url" class="btn_gyt">중복확인</a></td>
							</tr>
                            
                            <tr>
								<th scope="row">비밀번호</th>
								<td><input type="text" class="input02" title="비밀번호 입력" /></td>
							</tr>
                            
                             <tr>
								<th scope="row">비밀번호확인</th>
								<td><input type="text" class="input02" title="비밀번호 입력" /></td>
							</tr>
						
							<tr>
								<th scope="row">사업자등록번호</th>
								<td><input type="text" class="input03" title="사업자등록번호 입력" />
									-
									<input type="text" class="input03" title="사업자등록번호 입력" />
									-
									<input type="text" class="input03" title="사업자등록번호 입력" />
									12자리</td>
							</tr>
							<tr>
								<th scope="row">사업자구분</th>
								<td><input type="radio" id="work01" title="법인사업자" />
									<label for="work01" class="label01">법인사업자</label>
									<input type="radio" id="work02" title="개인사업자" />
									<label for="work02" class="label01">개인사업자</label></td>
							</tr>
							
							<tr>
								<th scope="row">주소</th>
								<td><div>
										<input type="text" class="input03" title="주소 입력" />
										-
										<input type="text" class="input03" title="주소 입력" />
										<a href="#url" class="btn_gyt">주소찾기</a></div>
									<div>
										<input type="text" class="input05" title="주소 입력" />
									</div>
									<div>
										<input type="text" class="input05" title="주소 입력" />
									</div></td>
							</tr>
							<tr>
								<th scope="row">직통번호</th>
								<td><select name="대표번호 앞자리" class="select02">
										<option>02</option>
										<option>031</option>
										<option>032</option>
									</select>
									-
									<input type="text" class="input03" title="대표번호 앞자리 입력" />
									-
									<input type="text" class="input03" title="대표번호 뒷자리 입력" /></td>
							</tr>
							<tr>
								<th scope="row">핸드폰</th>
								<td><select name="핸드폰 앞자리" class="select02">
										<option>02</option>
										<option>031</option>
										<option>032</option>
									</select>
									-
									<input type="text" class="input03" title="핸드폰 앞자리 입력" />
									-
									<input type="text" class="input03" title="핸드폰 뒷자리 입력" /></td>
							</tr>
							<tr>
								<th scope="row">홈페이지</th>
								<td><input type="text" class="input02" title="홈페이지 입력" /></td>
							</tr>
						</tbody>
					</table>
                            
                            </p>
			
  
  
  <div class="txt_center mt20"><a href="#url" class="btn_gyt">확인</a> <a href="#url" class="btn_gyt">취소</a></div>
     <p>&nbsp;</p> <p>&nbsp;</p>
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
