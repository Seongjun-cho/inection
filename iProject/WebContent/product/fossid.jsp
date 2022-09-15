<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
$(function(){
	var mact = $('.gnb_08');
	var mactDis = $('.gnb_08 ul');
	var mactOver = $('.gnb_08');

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
          <li class="local">HOME > 제품소개 > FOSSID</li>
		  <li class="title">FOSSID</li>
		  <li class="subtitle1">오픈소스 라이선스 및 보안 취약점 관리 솔루션</li>
		  <li class="subtitle2" style="font-size:25px;">소스코드 내 모든 오픈소스 컴포넌트를 탐지하고, 각 컴포넌트의 라이선스 및 보안취약점을 식별합니다.</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">개요</h4>
        <ul class="mb40">
          <li class="mt20"><img src="./images/product/product_fossid_img001.PNG" alt="fossid" style="width:100%;"></li>
          <li> 기업은 FOSSID를 활용해, 기업 내 사용된 소스코드가 어떤 오픈소스를 사용하고 있는지 파악하고,각각의 사용된 오픈소스 컴포넌트가 올바르게 사용되고 있는지를 판단해 이에 대한 대비책을 세울 수 있습니다.</li>
          <li class="mt20"><img src="./images/product/product_fossid_img002.PNG" alt="fossid" style="width:100%;"></li>
        </ul>        
        <h4 class="h4font">기능</h4>
        <ul class="mb40">        
        <li class="mt20"><img src="./images/product/product_fossid_img003.PNG" alt="fossid" style="width:100%;"></li>
       	</ul>       	
       	<h4 class="h4font">기업소개</h4>
        <ul class="mb40">
        	<li class="mt20"><img src="./images/product/product_fossid_img004.PNG" alt="fossid" style="width:100%;"></li>
        	<li class="mt20"><a href="https://fossid.com"><img src="./images/product/product_fossid_img005.PNG" alt="fossid" style="width:100%;"></li>
        </ul>
       	</ul>
      
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
