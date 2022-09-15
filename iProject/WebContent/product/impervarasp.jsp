<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
$(function(){
	var mact = $('.gnb_07');
	var mactDis = $('.gnb_07 ul');
	var mactOver = $('.gnb_07');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
</script> 

<%--contents--%>
<div id="subContents_wrap">
  <div class="subContents bg0201">
    <jsp:include page="../include/leftmenu02.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > 제품소개 > Imperva RASP</li>
		  <li class="title">Imperva RASP</li>
		  <li class="subtitle1">런타임 어플리케이션 자가방어 솔루션</li>
		  <li class="subtitle2" style="font-size:25px;"><br />Imperva Runtime Application Self-Protection(RASP)</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">개요</h4>
        <ul class="mb40">
          <li> Kong Gateway는 Kong의 API 게이트웨이입니다. Kong Konnect의 일부인 게이트웨이는 고객이 서비스 및 API의 전체 수명주기를<be />
          		 관리 할 수 있도록하여 모든 서비스에서 조직의 정보를 중개합니다. 또한 사용자는 하이브리드 클라우드 및 다중 클라우드 배포에서 API 및 마이크로 서비스 관리를 단순화 할 수 있습니다.</li>
        </ul>
        
        <h4 class="h4font">기능</h4>
        <ul class="mb40">
        <li class="mt20"><img src="./images/product/product_kong_img005.PNG" alt="Application Security" style="width:100%;"></li>
        <li class="mt20"><img src="./images/product/product_kong_img006.PNG" alt="Application Security" style="width:100%;"></li><br />
        <li style="font-size:25px;"> Kong Gateway (OSS) </li>
        <li> Kong Gateway (OSS)는 가볍고 빠르며 유연한 클라우드 네이티브 API 게이트웨이입니다. 기본 사항을 알고 있으면 쉽게 다운로드, 설치 및 구성하여 시작하고 실행할 수 있습니다. 게이트웨이는 RESTful API 앞에서 실행되며 핵심 플랫폼 이상의 추가 기능을 제공하는 모듈 및 플러그인을 통해 확장됩니다.</li><br/>
        <li style="font-size:25px;"> Kong Admin API </li>
        <li> Kong Admin API는 서비스, 경로, 플러그인 및 소비자의 관리 및 구성을위한 RESTful 인터페이스를 제공합니다. Kong Manager에서 수행하는 모든 작업은 Kong Admin API를 사용하여 자동화 할 수 있습니다.</li><br />
        <li style="font-size:25px;"> Kong Developer Potal </li>
        <li> Kong 개발자 포털 (Kong Dev Portal)은 새로운 개발자를 온 보딩하고 API 문서를 생성하고 사용자 정의 페이지를 생성하며 API 버전을 관리하고 개발자 액세스를 보호하는 데 사용됩니다.</li><br />
        <li style="font-size:25px;"> Kong Immunity </li>
        <li> Kong Immunity는 기계 학습을 사용하여 실시간으로 서비스 동작 이상을 자율적으로 식별하여 보안을 개선하고 침해를 완화하며 문제를 격리합니다. Kong Immunity를 사용하여 머신 러닝 기반 이상 탐지로 서비스 문제를 자율적으로 식별합니다.</li><br />
        <li style="font-size:25px;"> Kong Ingress Controller </li>
        <li> Kong for Kubernetes Enterprise (K4K8S)는 Kubernetes 수신 컨트롤러입니다. Kubernetes Ingress Controller는 Kubernetes 클러스터에서 실행되는 애플리케이션 (예 : Deployments, ReplicaSets)의 Kubernetes 서비스를 클러스터 외부에서 실행되는 클라이언트 애플리케이션으로 노출하는 프록시입니다. 인 그레스 컨트롤러의 목적은 Kubernetes 클러스터로 들어오는 모든 트래픽에 대해 단일 제어 지점을 제공하는 것입니다.</li><br />
        <li style="font-size:25px;"> Kong Manager </li>
        <li> Kong Manager는 Kong Gateway (Enterprise)를위한 GUI (그래픽 사용자 인터페이스)입니다. 내부적으로 Kong Admin API를 사용하여 Kong Gateway (OSS)를 관리하고 제어합니다. Kong Manager를 사용하여 단 몇 번의 클릭만으로 팀을 구성하고 정책을 조정하며 성과를 모니터링 할 수 있습니다. 팀, 서비스, 플러그인, 소비자 관리 등을 원하는 방식으로 정확하게 그룹화하십시오. 새로운 경로와 서비스를 만들고 몇 초 만에 플러그인을 활성화 또는 비활성화하십시오.</li><br />
        <li style="font-size:25px;"> Kong Plugins </li>
        <li> Kong Gateway 플러그인은 API 및 마이크로 서비스를 더 잘 관리하기위한 고급 기능을 제공합니다. 가장 까다로운 사용 사례를 충족하는 턴키 기능을 갖춘 Kong Gateway (Enterprise) 플러그인은 최대 제어를 보장하고 불필요한 오버 헤드를 최소화합니다. Kong Manager 또는 Admin API를 통해 Kong Gateway (Enterprise) 플러그인을 활성화하여 인증, 속도 제한 및 변환과 같은 기능을 활성화합니다.</li><br />
        <li style="font-size:25px;"> Kong Vitals </li>
        <li> Kong Vitals는 Kong Gateway (Enterprise) 노드의 상태 및 성능에 대한 유용한 메트릭과 게이트웨이 프록시 API 사용에 대한 메트릭을 제공합니다. 실시간으로 활력 징후를 시각적으로 모니터링하고 이상 징후를 찾아 낼 수 있으며, 시각적 API 분석을 사용하여 API 및 게이트웨이의 성능을 정확히 확인하고 주요 통계에 액세스 할 수 있습니다. Kong Vitals는 Kong Manager UI의 일부입니다.</li><br />
        <li style="font-size:25px;"> Insomnia </li>
        <li> Insomnia는 모든 REST 및 GraphQL 서비스에 대한 사양 우선 개발을 지원합니다. Insomnia를 통해 조직은 자동화 된 테스트, 직접 Git 동기화 및 모든 응답 유형 검사를 사용하여 설계 및 테스트 워크 플로를 가속화 할 수 있습니다. 모든 규모의 팀이 Insomnia를 사용하여 개발 속도를 높이고 배포 위험을 줄이며 공동 작업을 늘릴 수 있습니다.</li><br />
        
       	</ul>
       	
       	<h4 class="h4font">제품</h4>
        <ul class="mb40">
        	<li class="mt20"><img src="./images/product/product_kong_img004.PNG" alt="Application Security" style="width:100%;"></li>
        	<li class="mt20"><img src="./images/product/product_kong_img001.PNG" alt="Application Security" style="width:100%;"></li>
        	<li class="mt20"><img src="./images/product/product_kong_img002.PNG" alt="Application Security" style="width:100%;"></li>
        </ul>
       	</ul>
      
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />

