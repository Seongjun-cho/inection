<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_02');
	var mactDis = $('.gnb_02 ul');
	var mactOver = $('.gnb_02');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//-->
</script>

<%--contents--%>
<div id="subContents_wrap">
  <div class="subContents bg0101">
    <jsp:include page="../include/leftmenu01.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > 회사소개 > 연혁</li>
		  <li class="title">연혁</li>
        </ul>
      </div><div class="contents"> 
        <%--//내용시작--%>
        <p class="con_top"><img src="./images/company/company_history2_top.png" alt=""></p>
        <h4 class="h4font">기업현황</h4>
<!--         <p class="history_add mb40"><img src="./images/company/company_history_img01.gif" alt=""></p> -->
        <table class="company_table">
        	<tr>
        		<th>사업자명</th>
        		<td class="f_bk">주식회사 아이넥션소프트</td>
        	</tr>
        	<tr>
        		<th>주소지</th>
        		<td>08380 서울시 구로구 디지털로 31길 12 태평양물산 2층 90호</td>
        	</tr>
        	<tr>
        		<th>설립일</th>
        		<td>1999년 10월 9일</td>
        	</tr>
        	<tr>
        		<th>사업영역</th>
        		<td>기업용 소프트웨어 개발 및 공급</td>
        	</tr>
        	<tr>
        		<th>인가현황</th>
        		<td>기술혁신형중소기업(INNOBIZ)</td>
        	</tr>
        	<tr>
        		<th>기술등록</th>
        		<td>국내특허(1),소프트웨어등록(9)</td>
        	</tr>
        	<tr>
        		<th>주요제품</th>
        		<td>Mozart, 콜센터 App, 모바일 고객센터, 장사관리 시스템, 스마트 빌딩 정보 시스템</td>
        	</tr>
        </table>
        <p class="history_add mb40"></p>
        <h4 class="h4font">연혁</h4>
        <!--//2020------------------------------------------>
        <dl class="history2">
          <dt>2020년</dt>
          <dd>
            <ul>             
              <li><span>4월</span>NH저축은행소스코드 취약점 분석 솔루션 도입 구축 </li>
              <li><span>5월</span>에쓰오일 어플리케이션 소스코드 취약점 점검 솔루션 도입 구축</li>  
            </ul>
          </dd>
        </dl>
        <!--//2019------------------------------------------>
        <dl class="history2">
          <dt>2019년</dt>
          <dd>
            <ul>             
              <li><span>4월</span>삼성전자 NEXTERP Fortify DevOps 연계 구축 </li>
              <li><span>5월</span>삼성화재 웹취약점 자동점검툴 노후화 교체 Fortify WebInspect 납품</li>  
            </ul>
          </dd>
        </dl>
        <!--//2018------------------------------------------>
        <dl class="history2">
          <dt>2018년</dt>
          <dd>
            <ul>             
              <li><span>4월</span>비티씨코리아닷컴(빗썸) Fortify DevOps 연계 구축</li>
              <li><span>5월</span>평생교육진흥원 평생교육바우처 민원 콜센터용 어플리케이션 개발</li>
			  <li><span>6월</span>인천시설관리공단 장사관리시스템 증명서 발급 시스템 업그레이드 구축</li>		
			  <li><span>9월</span>삼성화재 머신러닝 플랫폼 보안솔루션(Fortify Python) 도입 구축</li>		
			  <li><span>10월</span>동행복권 LTI 교환장비 변경으로 인한 APP 개발 구축</li>			  
            </ul>
          </dd>
        </dl>
        <!--//2017------------------------------------------>
        <dl class="history2">
          <dt>2017년</dt>
          <dd>
            <ul>             
              <li><span>2월</span>삼성전자 기흥반도체(DSR SW연구소) 소스코드 보안취약점 점검 솔루션 Fortify 구축</li>
              <li><span>3월</span>삼성SDS 품질보안팀 프로젝트 Fortify SCA 증설 구축</li>
			  <li><span>4월</span>삼성화재 ABAP Fortify 연계 모듈 추가 개발</li>			  
            </ul>
          </dd>
        </dl>
  		<!--//2016------------------------------------------>
        <dl class="history2">
          <dt>2016년</dt>
          <dd>
            <ul>
              <li><span>1월</span>삼성생명보험 소스코드 보안취약점 점검 솔루션 Fortify 구축</li>
			  <li><span>&nbsp;</span>진흥원 콜센터 어플리케이션 시스템 추가 개발</li>
              <li><span>2월</span>삼성화재 소스코드 보안취약점 점검 솔루션 Fortify ABAP 추가 구축</li>
			  <li><span>3월</span>인천가족공원 모바일 민원센터 앱 구축</li>
			  <li><span>5월</span>인천가족공원 장사관리시스템 추가 개발</li>
			  <li><span>6월</span>웰스토리 소스코드 보안취약점 점검 솔루션 Fortify 구축</li>
			  <li><span>7월</span>삼성화재 ABAP Fortify 연계 모듈 개발</li>              
              <li><span>8월</span>삼성생명 소스코드 보안취약점 점검 솔루션 Fortify ABAP 추가 구축</li>
			  <li><span>9월</span>삼성물산 패션부문 콜센터 시스템 구축</li>
              <li><span>10월</span>BMW KOREA 텔레서비스 SOAP 인터페이스 개발</li>
			  <li><span>11월</span>삼성전자 소스코드 보안취약점 점검 솔루션 Fortify 추가 구축</li>
            </ul>
          </dd>
        </dl>
 		<!--//2015------------------------------------------>
        <dl class="history2">
          <dt>2015년</dt>
          <dd>
            <ul>
              <li><span>1월</span>진흥원 콜센터 어플리케이션 시스템 추가 개발</li>
              <li><span>4월</span>중동학원 행적학사 시스템 추가 개발</li>
              <li><span>&nbsp;</span>삼성전자 소스코드 보안취약점 점검 솔루션 Fortify 추가 구축</li>
              <li><span>5월</span>Synus 통합전산 시스템 추가 개발</li>
			  <li><span>12월</span>삼성엔지니어링 소스코드 보안취약점 점검 솔루션 Fortify 추가 구축</li>
              <li><span>&nbsp;</span>미라콤 소스코드 보안취약점 점검 솔루션 Fortify 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2014------------------------------------------%>
        <dl class="history2">
          <dt>2014년</dt>
          <dd>
            <ul>
              <li><span>1월</span>BMW KOREA OutBound Survey System</li>
              <li><span>&nbsp;</span>신한데이터시스템 소스코드 보안 솔루션 Fortify 공급 계약</li>
              <li><span>4월</span>BMW KOREA Call Center System</li>
              <li><span>&nbsp;</span>애버랜드 소스코드 보안취약점 점검 솔루션 Fortify 구축</li>
              <li><span>&nbsp;</span>삼성 디스플레이 중국 SSL 소주법인 IT보안 개선(Fortify)</li>
              <li><span>7월</span>대륜 E&S 모바일 고객센터</li>
              <li><span>&nbsp;</span>호텔신라 보안 솔루션 Fortify S/W 구축</li>
              <li><span>10월</span>BMW KOREA CRM(MS Dynamic) Interface</li>
            </ul>
          </dd>
        </dl>
        <%--//2013------------------------------------------%>
        <dl class="history2">
          <dt>2013년</dt>
          <dd>
            <ul>
              <li><span>2월</span>삼성SDS 마이싱글 시큐어코딩 프로젝트 Fortify 구축</li>
              <li><span>&nbsp;</span>삼성전자 무선사업부 정적 보안분석 소프트웨어 Fortify 도입</li>             
              <li><span>5월</span>경동도시가스 모바일 앱</li>
              <li><span>&nbsp;</span>삼성SDS SERP 소스코드 보안취약점 점검 솔루션 Fortify 도입</li>              
              <li><span>9월</span>(주)아이넥션 홈페이지 리뉴얼</li>
              <li><span>&nbsp;</span>삼성SDS S-CERT 그룹 진단룸 Fortify 구축 2차</li>
              <li><span>10월</span>나눔로또 콜센터 시스템 구축</li>
              <li><span>&nbsp;</span>크레듀 소스코드 취약점 점검 시스템 Fortify 구축</li>
              <li><span>11월</span>홈 모니터링 모바일 앱 구축</li>
              <li><span>&nbsp;</span>삼성디스플레이 소스코드 취약점 점검 시스템 증설(Fortify)</li>
            </ul>
          </dd>
        </dl>
        <%--//2012------------------------------------------%>
        <dl class="history2">
          <dt>2012년</dt>
          <dd>
            <ul>
              <li><span>1월</span>진흥원 콜센터 어플리케이션시스템 추가개발</li>
              <li><span>3월</span>에스원 원격 운영 시스템 개발</li>
              <li><span>4월</span>ING생명 NPAS 소스코드 분석툴 Fortify 구축</li>
              <li><span>6월</span>(주)홍인터내셔널 영업관리 시스템 개발</li>
              <li><span>8월</span>소스코드 분석툴 Fortify 구축</li>
              <li><span>9월</span>인천가족공원 장사관리 시스템 개발</li>
              <li><span>11월</span>(주)홍인터내셔널 해외 영업관리 시스템 추가 개발</li>
            </ul>
          </dd>
        </dl>
        <%--//2011------------------------------------------%>
        <dl class="history2">
          <dt>2011년</dt>
          <dd>
            <ul>
              <li><span>1월</span>진흥원 콜센터용 어플리케이션 시스템 추가 개발</li>
              <li><span>2월</span>삼성 SDS 삼성전자 PM 시스템 소스코드 분석툴 Fortify 구축</li>
              <li><span>&nbsp;</span>삼성 SDS 소스코드 분석툴 Fortify 구축</li>
              <li><span>6월</span>서울추모공원 장묘관리시스템 개발</li>
              <li><span>8월</span>포스코 문서관리시스템 컨설팅</li>
              <li><span>9월</span>KCL 통합정보시스템 모바일 구축</li>
              <li><span>10월</span>삼성생명 소스코드 분석툴 Fortify 구축</li>
              <li><span>&nbsp;</span>YES24 상품권 연동개발</li>
              <li><span>12월</span>KB 생명 소스코드 분석툴 Fortify 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2010------------------------------------------%>
        <dl class="history2">
          <dt>2010년</dt>
          <dd>
            <ul>
              <li><span>2월</span>숙명여자대학교 소스코드 분석툴 Fortify 구축</li>
              <li><span>3월</span>(주)모나도 QUEST 제품 개발</li>
              <li><span>&nbsp;</span>(주)유더블유에스 Data Manager 개발</li>
              <li><span>&nbsp;</span>독일법인 PJT관련 WEB 시스테 개발</li>
              <li><span>4월</span>삼성 SMD 소스코드 분석툴 Fortify 구축</li>
              <li><span>&nbsp;</span>SDS 전자 웹사이트 보안 점검시스템 구축</li>
              <li><span>5월</span>삼성 SDS IMK 보안진단 컨설팅 인프라 구축</li>
              <li><span>8월</span>주)KT 서초지사 SBS 플랫폼(모바일연동) 구축</li>
              <li><span>&nbsp;</span>소스코드 분석툴 Fortify 구축</li>
              <li><span>12월</span>중동학원 웹 어플리케이션 추가 개발</li>
            </ul>
          </dd>
        </dl>
        <%--//2009------------------------------------------%>
        <dl class="history2">
          <dt>2009년</dt>
          <dd>
            <ul>
              <li><span>1월</span>평생교육진흥원 2008년 학점은행 종합정보시스템 구축</li>
              <li><span>&nbsp;</span>평생교육진흥원 전산인프라 강화 사업</li>
              <li><span>2월</span>SECUI 상담관리 시스템 개발</li>
              <li><span>5월</span>평생교육원, 독학사 콜센터 시스템 구축</li>
              <li><span>6월</span>소스코드 취약점 진단사업 개시</li>
              <li><span>&nbsp;</span>LG패션 ERP 시스템 안정화 ABAP사업</li>
              <li><span>&nbsp;</span>우정사업본부 소스코드 분석툴 Fortify 납품</li>
              <li><span>7월</span>평생교육진흥원 행정정보 시스템 구축</li>
              <li><span>10월</span>삼성물산 건설부분 Fortify SCA 기술지원</li>
              <li><span>&nbsp;</span>(주)넷매니아 전자세금계산서 도입</li>
              <li><span>11월</span>텍투라코리아 제로투세븐 PJT관련 WEB POS시스템 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2008------------------------------------------%>
        <dl class="history2">
          <dt>2008년</dt>
          <dd>
            <ul>
              <li><span>4월</span>SECUI V-Shield / CM 모니터링 시스템 개발</li>
              <li><span>&nbsp;</span>요계획 시스템 구축</li>
              <li><span>5월</span>제네시스 Help Desk용 어플리케이션 구축</li>
              <li><span>7월</span>평생교육원 콜센터 추가개발</li>
              <li><span>8월</span>LG 패션 ERP 톱합시스템 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2007------------------------------------------%>
        <dl class="history2">
          <dt>2007년</dt>
          <dd>
            <ul>
              <li><span>2월</span>일본 오사카 간사이아반 은행 e-COLD 시스템 구축</li>
              <li><span>3월</span>경동도시가스 콜센터 시스템 구축</li>
              <li><span>7월</span>한국교육개발원 학점은행 콜센터</li>
              <li><span>9월</span>진흥원 콜센터</li>
              <li><span>11월</span>(주)삼천리 바코드 계량기 PDA 시스템</li>
            </ul>
          </dd>
        </dl>
        <%--//2006------------------------------------------%>
        <dl class="history2">
          <dt>2006년</dt>
          <dd>
            <ul>
              <li><span>1월</span>국민은행 SMS GateWay 시스템 구축</li>
              <li><span>&nbsp;</span>로보스타 웹주문 시스템 개발</li>
              <li><span>2월</span>PSK 생산, 물류 프로젝트 개발</li>
              <li><span>&nbsp;</span>책관리 시스템 개발</li>
              <li><span>3월</span>경동도시가스 모바일 시스템 구축</li>
              <li><span>4월</span>예스코 PDA 통합관리 시스템 개발</li>
              <li><span>&nbsp;</span>업일지 거래선카드 개발</li>
              <li><span>&nbsp;</span>GS CALTEX 조이마트 시스템 구축</li>
              <li><span>7월</span>중동학원 행적학사 시스템 구축</li>
              <li><span>9월</span>한국교육개발원 학점은행제 종합정보시스템구축</li>
              <li><span>12월</span>삼성전자 소스코드 분석툴 Fortify 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2005------------------------------------------%>
        <dl class="history2">
          <dt>2005년</dt>
          <dd>
            <ul>
              <li><span>1월</span>CMS송수신 모듈 개발 프로젝트</li>
              <li><span>&nbsp;</span>LG 전자 M-프로젝트</li>
              <li><span>&nbsp;</span>U-Hospital 구축 프로젝트</li>
              <li><span>2월</span>Credit Care 콜센터 프로젝트</li>
              <li><span>&nbsp;</span>삼성전기 WEB_ABAP 인터페이스 추가개발</li>
              <li><span>3월</span>모바일 프로젝트</li>
              <li><span>4월</span>한솔제지 구매지식 경영시스템 KMS 인터페이스 개발</li>
              <li><span>6월</span>KB 케미칼 경영정보시스템 구축</li>
              <li><span>7월</span>삼성물산 e-프라자 시스템 개발</li>
              <li><span>8월</span>기술혁신개발사업-홈네트워크기반의 단지 제어용 서비스서버 개발</li>
              <li><span>9월</span>극동도시가스 민원관리 시스템 구축</li>
              <li><span>10월</span>근화제약 영업지원 모바일 시스템 K-CMS SFA 프로젝트</li>
              <li><span>11월</span>(주)삼천리 무선 모바일 A/S시스템 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2004------------------------------------------%>
        <dl class="history2">
          <dt>2004년</dt>
          <dd>
            <ul>
              <li><span>1월</span>삼성화재 웹메일 시스템 구축</li>
              <li><span>&nbsp;</span>사이버대학교 시스템 구축</li>
              <li><span>2월</span>무역센터 공가관리 시스템 구축</li>
              <li><span>3월</span>주)신디케이트시스템사 웹프로젝트 개발</li>
              <li><span>4월</span>LG CALTEX TAS 시스템 프로젝트 구축</li>
              <li><span>5월</span>삼성생명 지점진단툴 프로젝트 구축</li>
              <li><span>&nbsp;</span>해외 글로벌 마케팅 시스템 구축</li>
              <li><span>6월</span>프리머스 통합전산망 구축</li>
              <li><span>&nbsp;</span>LG POWER 수요예측 프로젝트 구축</li>
              <li><span>&nbsp;</span>삼성프라자 약속관리 시스템 구축</li>
              <li><span>7월</span>르노삼성자동차 녹취서버 AP개발</li>
              <li><span>9월</span>LG ART CENTER 웹사이트 및 기간계 개발</li>
              <li><span>&nbsp;</span>제일모직(패션) 중국 기간 시스템 구축</li>
              <li><span>10월</span>LG전선 SAP R/3 ABAP 개발 프로젝트</li>
              <li><span>11월</span>삼성전자 EDS 제조지원 시뮬레이션 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2003------------------------------------------%>
        <dl class="history2">
          <dt>2003년</dt>
          <dd>
            <ul>
              <li><span>1월</span>삼성전자 감사팀 ADAMS 프로젝트 개발</li>
              <li><span>&nbsp;</span>윤리경영 사이트 구축</li>
              <li><span>&nbsp;</span>삼성투신 감사팀 윤리경영 사이트 구축</li>
              <li><span>2월</span>철도청 고속철도 통합정보 시스템 구축</li>
              <li><span>5월</span>사팀 리스크워닝 프로젝트 구축</li>
              <li><span>&nbsp;</span>CNS 한양사이버 대학교 교육컨텐츠 개발 및 구축</li>
              <li><span>6월</span>삼성전자 스마트 CRM 고객분석 인프라 구축</li>
              <li><span>&nbsp;</span>학점은행 종합정보 시스템 구축</li>
              <li><span>12월</span>르노삼성자동차 엔젤시스템(마케팅 콜센터) 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2002------------------------------------------%>
        <dl class="history2">
          <dt>2002년</dt>
          <dd>
            <ul>
              <li><span>1월</span>삼성전자 온양사업장 품질시스템 개발</li>
              <li><span>&nbsp;</span>삼성전자 기준정보 시스템 구축</li>
              <li><span>2월</span>삼성전자 온양사업장 OSMS 구축</li>
              <li><span>&nbsp;</span>삼성 SDS 토로스 물류 납기제안 시스템 개발</li>
              <li><span>&nbsp;</span>삼성전자 감사 커뮤니티 문서보안 개발</li>
              <li><span>4월</span>충북방송 콜센터 시스템 구축</li>
              <li><span>6월</span>삼성전자 AMLCD 원가 시스템 구축</li>
              <li><span>7월</span>삼성전자 반도체 TPSS 구축</li>
              <li><span>8월</span>삼성 SDS STUK e-PMS 시스템 구축</li>
              <li><span>&nbsp;</span>삼성전자 마케팅 콜센터 구축</li>
              <li><span>&nbsp;</span>LG CNS e-Service 콜센터 구축</li>
              <li><span>10월</span>삼성전자 사이버 신문고 시스템 개발</li>
              <li><span>12월</span>콜센터 시스템 개발 및 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2001------------------------------------------%>
        <dl class="history2">
          <dt>2001년</dt>
          <dd>
            <ul>
              <li><span>3월</span>엔서커뮤니티(툴키트)Multimedia Contact Center</li>
              <li><span>8월</span>도체 설비기준정보 시스템 구축</li>
              <li><span>9월</span>삼성전자 감사 커뮤니티 시스템 구축</li>
            </ul>
          </dd>
        </dl>
        <%--//2000------------------------------------------%>
        <dl class="history2">
          <dt>2000년</dt>
          <dd>
            <ul>
              <li><span>3월</span>한국 HP 121 데모 시스템 구축</li>
              <li><span>6월</span>마케팅 콜센터 구축</li>
              <li><span>&nbsp;</span>한국HP 원투원 프로젝트 수행</li>
            </ul>
          </dd>
        </dl>
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
