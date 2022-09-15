<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_03');
	var mactDis = $('.gnb_03 ul');
	var mactOver = $('.gnb_03');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//-->
</script> 

<%--contents--%>
<div id="subContents_wrap">
  <div class="subContents bg0301">
    <jsp:include page="../include/leftmenu03.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > 사업영역 > Smart Contact Center</li>
		  <li class="title">Smart Contact Center</li>
		  <li class="subtitle1">고객사 콜센터 APP</li>
		  <li class="subtitle2" style="font-size:25px;">Call center Application</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">콜센터 APP 개요</h4>
        <p class="mb40">CTI(Computer Telephony Integration)란 컴퓨터를 통해 전화, 팩스 등의 전화시스템을 제어하는 기술로 컴퓨터 상에서 <br />
          전화, 팩스 같은 통신매체 기능을 처리하거나 음성팩스 등을 컴퓨터 네트워크와 결합해 전송, 컴퓨터에 의해 전화의 발수신을 자동화해 통화에 <br />
          관련된 모니터링, 통계분석등 각종 정보에 대한 접근 조회, 처리하는 시스템 </p>

        <h4 class="h4font">콜센터 APP 기능</h4>
        <ul class="mb40">
          <li>- <strong class="f_bk">클릭투콜 &amp; 토크(Click to Call &amp; Talk)</strong> : 인터넷 쇼핑몰을 방문한 고객이 상담원과 통화를 원할 때 화면상의 버튼을 클릭하면 <br />
            <span class="ml10"></span>인터넷 상에서 콜 센터 상담원과 통화하는 기능</li>
          <li>- <strong class="f_bk">에스코티드 브라우징(Escorted Browsing)</strong> : 상담원의 도움을 요청한 고객의 화면을 상담원도 똑같이 보는 기능</li>
          <li>- <strong class="f_bk">메시지온 디맨드</strong> : 고객이 이메일, 휴대폰, 페이저, 팩스 등 다른 통신 매체로 상담 결과 버튼을 클릭하면 인터넷상에서 콜 센터 상담원과 통화하는 기능</li>
          <li>- <strong class="f_bk">문자 채팅</strong> : 상담원과 통화가 어려운 고객인 경우 문자로 상담하는 기능</li>
          <li>- <strong class="f_bk">고객정보 디스플레이</strong> : 상담원 PC에 고객에 대한 정보를 보여주는 기능</li>
          <li>- <strong class="f_bk">상담원 인물 보기</strong> : 고객의 PC에 연결된 상담원의 얼굴을 보여주는 기능</li>
          <li>- <strong class="f_bk">인터넷 콜 모니터링</strong> : 인터넷 콜 센터에 대한 다양한 시스템 통계 자료 제공</li>
        </ul>
        
        <h4 class="h4font">콜센터 APP 특장점</h4>
        <ul>
          <li>- Web to Web, Web to Phone 방식을 지원하는 인터넷 콜센터</li>
          <li>- 인터넷 콜 센터에 대한 다양한 시스템 통계자료 제공</li>
          <li>- 상담원 PC에 고객에 대한 정보를 보여주는기능</li>
          <li>- 상담원과 통화가 어려운 고객인 경우 문자로 상담하는 기능</li>
          <li>- 고객이 이메일, 휴대폰, 페이져, 팩스 등 다른 통신 매체로 상담 결과를 버튼을 클릭하면 인터넷 상에서 콜 센터 상담원과 통화하는 기능</li>
          <li>- 상담원의 도움을 요청한 고객의 화면을 상담원도 똑같이 보는 기능</li>
        </ul>
        <p><img src="./images/business/business_business3_img01.gif" alt=""></p>
        
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
