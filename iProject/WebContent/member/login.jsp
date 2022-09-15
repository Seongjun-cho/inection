<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
<%--
$(function(){
	var mact = $('.gnb_01');
	var mactDis = $('.gnb_01 ul');
	var mactOver = $('.gnb_01');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//--%>

$(document).ready(function(){

	//메인 롤링이미지
	$("#foo3").carouFredSel({
		scroll	: {	duration : 500	},
		auto	: {	pauseOnHover: 'resume'	},
		prev 	: {	button		: "#foo4_prev",
					key			: "left",
					items		: 1,
					duration	: 500	},
		next 	: {	button		: "#foo4_next",
					key			: "right",
					items		: 1,
					duration	: 500}
	});

});

// 로그아웃
function logout(){
	var re = confirm("로그아웃 하시겠습니까?");
	if(re){
		location.href = "logoutSubmit";
		return;
	}else{
		return;
	}
}


// 로그인
function loginSubmit(){
	if(window.event.keyCode == 13) {
		if($("#id").val() == ""){
			alert("아이디를 입력해주세요");
			$("#id").focus();
			return;
		}
		if($("#pw").val() == ""){
			alert("비밀번호를 입력해주세요");
			$("#pw").focus();
			return;
		}
		
		if(($("#id").val() == "inection") && ($("#pw").val() == "!nectI0n")) {
			alert("로그인되었습니다.");
			$("#form").attr("action", "loginSubmit").submit();
		} else {
			alert("아이디와 비밀번호가 일치하지 않습니다.");
		}
	}	
} 
</script>
<%--contents--%>

<div id="subContents_wrap">
  <div class="subContents bg0101">
    <jsp:include page="../include/leftmenu06.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > LOGIN</li>
		  <li class="title">LOGIN</li>
        </ul>
      </div>
      
			<form  action="" method="post" name="form" id="form">
				<table width="573" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="175" rowspan="4" align="center"><img src="images/login/LOGINIMG_28.GIF" width="132" height="126" /></td>
						<td width="218" height="26"><img src="images/login/LOGINIMG_31.GIF" width="115" height="17" /></td>
						<td width="180">&nbsp;</td>
					</tr>
					<tr>
						<td><img src="images/login/ID.GIF" width="25" height="13" />
						<input type="text" placeholder="아이디를 입력해주세요" name="id" id="id" class="textinput" onkeyup="loginSubmit();" />
						</td>
					</tr>
					<tr>
						<td>
							<img src="images/login/PW.GIF" width="25" height="13" />
							<input type="password" placeholder="비밀번호를 입력해주세요" name="pw" id="pw" class="textinput" autocomplete="off" onkeyup="loginSubmit();"/>
						</td>
					</tr>
					<tr>
						<td rowspan="2">
							<a href="javascript:loginSubmit()">
								<img src="images/login/BTN_LOGIN.JPG" width="75" height="33" />
							</a>
						</td>
					</tr>
					
				</table>
			</form>
		</div>
		<div>
  			<ul class="member_txt">
				<li>- 아이디와 비밀번호는 대소문자를 구분합니다.</li>
				<li>- 아이디 또는 비밀번호를 잊으신경우에는 문의해주세요.</li>
			</ul>
		</div>
	</div>
	<%-- //content --%> 
</div>
<jsp:include page="../include/footer.jsp" flush="true" />

