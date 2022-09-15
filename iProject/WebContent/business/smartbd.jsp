<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_01');
	var mactDis = $('.gnb_01 ul');
	var mactOver = $('.gnb_01');

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
          <li class="local">HOME > 사업영역 > Smart BIMS</li>
		  <li class="title">Smart BIMS</li>
		  <li class="subtitle1">스마트 빌딩 정보 시스템 </li>
		  <li class="subtitle2" style="font-size:25px;">Smart Buliding Information Management System</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">스마트빌딩 개요</h4>
        <p class="mb40">Smart Phone, Smart Pad를 이용하여 관리자에게 시설물(배수탱크, 공조기등)에 대한 점검 및 제어 서비스를 제공하고 건물 입주자는 <br />
          Phone, Tablet을 이용하여 조명과 GHP(Gas engine Heat Pump)를 조작함으로 장소와 시간에 제약을 받지 않고, 불필요한 에너지 사용을 감소시켜<br />
          비용을 낮출 수 있습니다.</p>
        <h4 class="h4font">스마트빌딩 기능</h4>
        <ul class="mb40">
          <li>- 해당 건물에 대한 도면을 보면서 현재 상태 모니터링 및 제어 가능</li>
          <li>- 알람 이력조회 가능</li>
          <li>- 직관적인 빌딩정보 및 지도 서비스</li>
          <li>- 이상상태 발생시 푸쉬를 통하여 메시지 전달 </li>
        </ul>
        <h4 class="h4font">스마트빌딩 구조도</h4>
        <p class="mb40"><img src="./images/business/business_business1_img01.gif" alt=""></p>
        <h4 class="h4font">스마트빌딩 특장점</h4>
        <ul class="mb40">
          <li>- 여러 인터페이스를 이용하여 최소한의 데이터통신으로 빠른 결과를 얻음</li>
          <li>- 가식성이 좋은 UI로 비교 및 분석이 용이</li>
          <li>- 재난발생 시 빠른 대처가능</li>
          <li>- iOS, Android, 폰, 태블릿등 어떠한 디바이스에서도 활용 가능한 맞춤형 UI</li>
          <li>- 그래프를 통해 건물에 대한 탄소배출량 및 각종 요금에 대한 정보를 쉽게 비교확인</li>
          <li>- 도면이 바뀌어도 앱을 새로 받지 않고, 도면 업데이트 가능</li>
          <li>- 여러 빌딩을 편하게 관리 할 수 있는 인터페이스 </li>
          <li>- 각종 이상상태에 대한 알람서비스 유무 지정</li>
        </ul>
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
