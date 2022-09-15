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
  <div class="subContents bg0201">
    <jsp:include page="../include/leftmenu02.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > 제품소개 > MOZART</li>
		  <li class="title">MOZART</li>
		  <li class="subtitle1">모짜르트 모바일 솔루션</li>
		  <li class="subtitle2" style="font-size:25px;">MOZART Mobile Solution</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">모짜르트 개요</h4>
        <p class="mb40">MOZART는 Mobile Zig Appliction for Reaction and Transmission의 약자로 ㈜아이넥션소프트가 개발 중인 모바일 환경의 모든 시스템을 뜻합니다. <br />
          MOZART Mobile GateWay Server는 기간계 시스템과 모바일 장비의 중계자로써 제어, 연결, 관리 송신시 에러 복구 및 보안을 담당하는 <br />
          솔루션입니다. </p>
        <h4 class="h4font">모짜르트 기능</h4>
        <ul class="mb40">
          <li>- DB에 직접 접근하지 못하는 환경 혹은 디바이스에서 DB와 클라이언트의 사이에 정보를 송수신을 도와주는 게이트웨이</li>
          <li>- 각 쿼리에 해당하는 값을 받아 원하는 형식으로 출력</li>
          <li>- mySQL, MSSQL, ORACLE, SAP, DB2등 대부분의 DB지원</li>
          <li>- 여러대의 서버를 한곳에서 통합관리</li>
          <li>- 시스템에 필요한 코드를 한곳에서 추가 관리</li>
        </ul>
        <h4 class="h4font">모짜르트 구성도</h4>
        <p class="mb40"><img src="./images/product/product_mozart_img01.gif" alt=""></p>
        
        
        <h4 class="h4font">모짜르트 특장점</h4>
        <ul class="mb40">
          <li>- 시스템 로그와 사용자 로그를 따로 관리하여 어떤 사용자가 언제 무엇을 했는지 명확히 확인 가능</li>
          <li>- 소스를 직접 수정하지 않아서 Was를 재부팅 하지 않고, 쿼리 수정 및 서버 수정</li>
          <li>- 암호화가 필요한 부분과 필요하지 않는 부분을 설정하여 적용가능</li>
          <li>- 원하는 출력형태로 선택이 가능(XML, JSON)</li>
          <li>- 동기 / 비동기 방식의 모바일 DB를 운영하여 통신 장애 시에도 신속하게 업무를 처리</li>
          <li>- 다양한 웹 브라우져(Explorer, Safari, Fire Fox, Opera, Chrome등) 지원</li>
          <li>- java가 구동되는 환경이면 OS(Unix, Linux, Windows)에 관계없이 구동</li>
        </ul>
        
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
