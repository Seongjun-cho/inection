<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
$(function(){
	var mact = $('.gnb_05');
	var mactDis = $('.gnb_05 ul');
	var mactOver = $('.gnb_05');

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
          <li class="local">HOME > 제품소개 > Sonatype</li>
		  <li class="title">Sonatype</li>
		  <li class="subtitle1">오픈소스 보안 취약점 관리</li>
		  <li class="subtitle2" style="font-size:25px;">Open Source Security Management</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">개요</h4>
        <ul class="mb40">
          <li class="mt20"><img src="./images/product/product_sonatype_img001.png" alt="Sonatype" style="width:100%;"></li>
          <li class="mt20"><img src="./images/product/product_sonatype_img002.png" alt="Sonatype" style="width:100%;"></li>
          <li> 현재 대부분의 애플리케이션은 오픈소스를 토대로 개발되고 있습니다. Fortify의 소프트웨어 보안 연구팀은 대다수의 애플리케이션 (웹의 79%, 모바일의 88%)에 적어도 하나의 중요하거나 심각도가 높은 문제가 있음을 발견했습니다.
          	     심각도가 높은 문제로는 대표적으로 SQL을 이용하여 침투대상에 접근하여 데이터를 변형하고 조작하는 SQL Injection이 있으며, 그 다음으로 Password Management: Hardcoded Password 와 같이 심각도의 우선순위가 높고 악용하기 어렵지만 많은 데이터 손상을 초래할 수 있는 취약점 등이 있습니다.<br />
          	   <br />지난 15년 동안 수천 개의 회사가 오픈 소스 구성 요소로 인해 침해를 당한 사례들이 있습니다. OWASP Top10에도 매년 들어가고 있는 Issue인 만큼 현재 오픈소스 관리의 중요성은 보안적인 측면에서 필수 분야가 되었습니다.</li>
        </ul>
        
        <h4 class="h4font">기능</h4>
        <ul class="mb40">
       	  <li>Sonatype은 오픈 소스의 위험에 대해 모니터링 합니다. 아웃소싱하는 조직은 먼저 해당 애플리케이션에 포함 된 오픈 소스가 무엇인지, 그리고 그것이 보안 또는 법적 위험을 초래하는지 여부를 프로덕션에 투입하기 전에 먼저 확인해야만합니다. 또한 더 이상 개발을 거치지 않는 레거시 애플리케이션을 분석하여 오래된 오픈 소스 구성 요소와 관련된 위험 노출을 최소화하여야 합니다.
       	  	  <br/><br/> Sonatype의 대표적인 기능인 Nexus Auditor에 대해 알아봅시다.<br/>
       	  	  1. Generate a Software Bill of Materials(BOM)<br/>
       	  	     - 기존 애플리케이션에서 사용되는 오픈 소스 구성 요소를 식별하기 위해 소프트웨어 BOM을 자동으로 생성, 앱에 포함 된 전체 오픈 소스 구성 요소 <br />
       	  	     <span class="ml10"></span>목록을 가져 와서 오픈 소스 정책을 위반하는 구성 요소를 빠르게 식별합니다.<br/>
       	  	  2. 응용 프로그램 내에서의 라이선스 및 보안 위험 심사<br/>
       	  	     - 애플리케이션을 사용하기 전에 Nexus Auditor로 스캔하여 제한된 라이선스 또는 보안 취약성 여부를 명확하게 확인하여야 합니다.<br/>
       	  	     <span class="ml10"></span>Auditor를 사용하면 오픈 소스 정책을 기반으로 위험을 분석하고 전문가 수정 지침을 통해 문제를 해결할 수 있습니다.<br/>        	  	  
       	  	  3. 새로운 취약점에 대한 지속적으로 모니터링<br/>
       	  	     - Nexus Auditor는 프로덕션 애플리케이션을 지속적으로 모니터링하여 새로 공개 된 취약점을 식별합니다. 새로운 취약점이 발견되면 이메일 또는<br/> 
       	  	     <span class="ml10"></span>경고를 받게되므로 즉시 조치를 취하여 외부 공격자의 위협을 제거 할 수 있습니다.<br/>
       	  	     
       	  </li>
       	  <li>Nexus Auditor의 주요 이점</li>
          <li>- 취약한 오픈 소스 구성 요소로부터 Third-party 또는 Legacy Applications 보호</li>
          <li>- 지속적인 모니터링을 통한 새로운 위험의 즉각적인 조치</li>
          <li>- 아웃소싱 개발 팀이 제한적인 오픈 소스 라이선스 사용을 하지 않게 되어 잠재적인 법적 문제를 제거 </li>
          <li>- 모든 애플리케이션(개발이 진행되지 않는 프로그램 포함)에 대한 오픈 소스의 위험성 제거를 위해 적극적이고 지속적인 관리</li>
        </ul>
          <img src="./images/product/product_sonatype_img003.png" alt="Sonatype" class="mb40" style="width:100%;">
          <img src="./images/product/product_sonatype_img004.png" alt="Sonatype" class="mb40" style="width:100%;">
        <center> <a href="./images/product/SON_Product_Data_Sheet_Auditor_partner_jan8.pdf" target="_blank"><img src="./images/product/brochure.png" alt="Sonatype" class="mb40" style="width:50;"></a></center>
          
        <h4 class="h4font">Open source Security 를 위한 솔루션 (Fortify + Sonatype)</h4>
        <ul class="mb40">
        	<li>Fortify와 Sonatype을 통합함으로써 광범위한 언어, 프레임 워크 및 시스템에서 가장 심각한 취약점을 정확하게 탐지하고, 애플리케이션의 보안 문제에 대해 개발자들에게 명확하고 상황에 적절한 수정 및 대처 가능한 방안을 제시하여 효율적으로 대처가 가능합니다. 
        	또한 세계적 수준의 연구를 통해 소프트웨어 보안 업계를 선도하는 동시에 새로운 취약성을 개척합니다.
        	</li>
		</ul>
          <img src="./images/product/product_sonatype_img005.png" alt="Sonatype" class="mb40" style="width:100%;">
          <img src="./images/product/product_sonatype_img006.png" alt="Sonatype" class="mb40" style="width:100%;">
		<ul class="mb40">
			<li>Fortify와 Sonatype은 SDLC의 모든 단계에서 오픈 소스 정책을 시행하고 위험을 제어합니다.<br/>
				1. Sonatype에 의한 오픈 소스 구성 요소 분석을 통해  보안 취약성 및 라이선스 세부 정보를 포함한 포괄적인 BOM을 제시합니다.<br/>
				2. 통합 경험을 통해 IDE 또는 CI / CD 파이프 라인에 관계없이 정적 및 구성 분석을 단일 통합 지점으로 결합합니다.<br/>
				3. 오픈 소스 문제의 우선 순위 지정하여 Susceptibility Analysis를 사용하여 애플리케이션에서 오픈 소스 문제가 호출되거나 제어 가능한지 확인합니다.<br/>
        	</li>
        </ul>
		<iframe width="770" height="650" src="https://www.youtube.com/embed/4hKKruB1wN0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br /><br /><br /><br />
		
        <h4 class="h4font">OSS업계의 주요 Sonatype 차별화 요소</h4>
        <ul class="mb40">
			<li>평균적으로 오픈 소스 결과를 수동으로 조사하는 시간 '20시간', 애플리케이션 SCA 스캔은 평균적으로 '38가지' 의 오픈 소스 문제를 식별,<br />
				기업 조직이 평균적으로 가지고 있는 응용프로그램 수 '100개', 보안과 관련된 사항없이 문제를 조사하데 소요될 수 있는 시간 '1266시간'<br/><br/>				
				이러한 OSS업계에서의 Sonatype만의 차별화 된 요소는, 우선 Sonatype은 오픈 소스 문제의 우선 순위 지정 자동화를 통하여 중요도가 높은 문제를 우선적으로 해결합니다. 그러기 위해 차세대 OSS인 Seusceptibility analysis를 이용하게됩니다.<br />
				SAST를 사용하여 개발자가 직접 또는 간접적으로 함수를 호출했는지에 대한 여부와 해당 호출로 인해 코드가 공격에 취약한 지 확인하기 위해 오픈 소스 이슈를 자동 분석합니다. 그렇지 않은 경우, 오탐지로 예외처리 할 수 있습니다.
        	</li>
        </ul>
          <img src="./images/product/product_sonatype_img007.png" alt="Sonatype" class="mb40" style="width:100%;">
          <img src="./images/product/product_sonatype_img008.png" alt="Sonatype" class="mb40" style="width:100%;"><br /><br /><br/>

        <h4 class="h4font">SDLC 연동(CI/CD Integration)</h4>
          <img src="./images/product/product_sonatype_img009.png" alt="Sonatype" class="mb40" style="width:100%;">
          <img src="./images/product/product_sonatype_img010.png" alt="Sonatype" class="mb40" style="width:100%;"><br /><br /><br />

        <h4 class="h4font">Fortify & Sonatype Integration</h4>
          <img src="./images/product/product_sonatype_img011.png" alt="Sonatype" class="mb40" style="width:100%;"><br />
		<iframe class="vidyard_iframe" src="//play.vidyard.com/SNYMQYkEoHkFPbPLcUZtAm.html?" width=700 height=360 scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen></iframe><br /><br /><br /><br />
		
        <h4 class="h4font">기대효과</h4>
        <table width="100%" cellpadding="0" cellspacing="0" border="0" class="table_blue02 mb40">
          <colgroup>
          <col width="220px" />
          <col width="*" />
          </colgroup>
          <tr>
            <th class="top">빠른 식별 및 조치</th>
            <td class="top"><strong>- 기업 내 사용된 오픈소스 및 보안취약점의 신속한 현황파악</strong><br/>
              <span class="ml10"></span>어떤 프로젝트 , 어떤 오픈소스 , 어떤 버전에서 발견이 되었는지 신속한 현황파악이 가능<br/>
              <strong>- 빠른 조치가 필요한 오픈소스 보안취약점을 신속하게 식별</strong><br/>
              <span class="ml10"></span>보안취약점이 발견된 오픈소스에 대한 우선순위 확인 및 사내 보안정책 적용<br/>
              <strong>- 오픈소스 보안취약점에 대한 빠른 조치 가능</strong><br/>
              <span class="ml10"></span>대체 솔루션 적용<br/>
              <span class="ml10"></span>보안취약점이 적거나 없는 대체 버전의 오픈소스 버전 적용<br/>
          </tr>
          <tr>
            <th>지속적인 모니터링 및 자동화</th>
            <td><strong>- 오픈소스 보안과 상용코드 보안의 통합 관리 및 자동화 가능</strong><br/>
              <span class="ml10"></span>시큐리티 테스팅 툴(Appscan/Fortify)과 연동<br/>
              <span class="ml10"></span>빌드툴 , CI 툴과의 연동<br/>
              <strong>- 오픈소스 보안취약점에 대한 지속적인 모니터링</strong><br/>
              <span class="ml10"></span>전세계 가장 많은 오픈소스 DB, 시간단위 DB 업데이트를 통해 신규보안취약점에 대한 빠른 알림 제공</td>
          </tr>
        </table>
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
