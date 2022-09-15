<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<title>아이넥션소프트</title>
<%@ include file="/include/taglibs.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/sub.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<script type="text/javascript" >

$(document).ready(function(){
	
	// 관리자인 경우만 수정/삭제 허용
	$("#BtnFaqModify").hide();
	$("#BtnFaqDelete").hide();
	<c:if test="${session.user_id == 'admin'}">
		$("#BtnFaqModify").show();
		$("#BtnFaqDelete").show();
	</c:if>
	
	//메인 롤링이미지
	$("#foo3").carouFredSel({
		scroll	: {	duration 	: 500},
		auto	: {	pauseOnHover: 'resume'},
		prev	: {	button		: "#foo4_prev",
					key			: "left",
					items		: 1,
					duration	: 500},
		next	: {	button		: "#foo4_next",
					key			: "right",
					items		: 1,
					duration	: 500}
	});
	
	//목록으로
	$("#BtnList").click(function(){
		$("#form").attr("action","FAQ_List.action").submit();
	});
	
	//수정
	$("#BtnFaqModify").click(function(){
		$("#inputType").val("update");
		$("#form").attr("action","FAQ_InputForm").submit();
	});
	
	//삭제
	$("#BtnFaqDelete").click(function(){
		var re = confirm("게시글을 삭제하시겠습니까?\n삭제된 게시글은 복구할 수 없습니다.");
		if(re){
			$("#form").attr("action","FAQ_Delete").submit();	
			return;
		}else{
			return;
		}
	});
	
});

</script>
</head>
<body  style="background:url(images/sub/sub_bg.jpg) repeat-x top center;">
<div id="wrap" >
	<div id="skipToContent"> <a href="#container" accesskey="1" title="브라우저에 따라 Alt + 1 또는 Alt + Shift + 1 또는 Shift + Esc + 1 후 Enter를 치시면 본문내용으로 바로갑니다.">본문 바로가기</a> </div>
	<div id="header" style="background:url(images/top/top_bg.png) no-repeat;">
		<%@ include file="../include/top.jsp" %>
	</div>
	<%-- //header --%>
	<div id="container">
		<div class="sub_vjr"></div>
		<%-- //sub_vjr --%>
		<span class="sub_vjr"><img src="images/sub/sub_visual_4.png" width="970" height="207" /></span>
		<div class="leftcolumn">
			<div id="snb">
				<h2><img src="images/menu/left_title_04.jpg" width="200" height="36" /></h2>
				<ul>
					<li><a href="noticeList">공지사항</a></li>
					<li><a href="QNA_List">Q&A(A/S접수)</a></li>
					<li><a href="FAQ_List" class="on">FAQ</a></li>
					<li><a href="referenceList">자료실</a></li>
				</ul>
			</div>
			<div><a href="#"><img src="images/common/left_banner_01.jpg" width="200" height="120" /></a></div>
		</div>
		<%-- //leftcolumn --%>
		<div class="rightcolumn">
			<div class="top_tit">
				<h3><img src="images/menu/title_05_03.jpg" alt="" width="400" height="50" /></h3>
				<div class="location"> <span class="hide">페이지 위치 : </span> <a href="#url"><img src="images/common/ico_home.jpg" width="11" height="11" style="vertical-align:middle"/> HOME</a> &gt; <a href="#url">고객센터</a> &gt; <strong>FAQ</strong> </div>
			</div>
			<%-- //top_tit --%>
			<div class="content">
				<form name="form" action="" method="post" id="form">
					<input type="hidden" name="sseq" id="sseq" value="${faqVO.sseq}" /> 
					<input type="hidden" name="curPage" id="curPage" value="${faqVO.curPage}"/>
					<input type="hidden" name="inputType" id="inputType" />
					<table cellspacing="0" class="b_view" summary="제목, 등록일, 메일, 연락처, 내용">
						<colgroup>
							<col width="15%" />
							<col width="35%" />
							<col width="15%" />
							<col width="35%" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">등록일</th>
								<td colspan="3">
									<fmt:parseDate var="redate" value="${faqVO.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
									<fmt:formatDate value="${redate}" pattern="yyyy년 MM월 dd일 HH시 mm분" />
								</td>
							</tr>
							<tr>
								<th scope="row">질문</th>
								<td colspan="3">${faqVO.question}</td>
							</tr>
							<tr>
								<th scope="row">답변</th>
								<td colspan="3">${faqVO.answer}</td>
							</tr>
						</tbody>
					</table>
					<div class="txt_center mt10"> 
						<input type="button" value="수정" id="BtnFaqModify" class="bg_gry" style="cursor: pointer;" />
						<input type="button" value="삭제" id="BtnFaqDelete" class="bg_gry" style="cursor: pointer;" />
						<input type="button" value="목록" id="BtnList" class="bg_gry" style="cursor: pointer;" />
					</div>
				</form>
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
