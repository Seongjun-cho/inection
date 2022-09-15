<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
$(function(){
	var mact = $('.gnb_06');
	var mactDis = $('.gnb_06 ul');
	var mactOver = $('.gnb_06');

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
          <li class="local">HOME > 제품소개 > Blancco</li>
		  <li class="title">Blancco</li>
		  <li class="subtitle1">데이터 영구삭제 소프트웨어</li>
		  <li class="subtitle2" style="font-size:25px;">100% Secure Erasure & Diagnostics</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">개요</h4>
        <ul class="mb40">
          <li class="mt20"><img src="./images/product/product_blancco_img001.PNG" alt="Blancco" style="width:100%;"></li>
          <li> 전세계 기업들은 IT자산관리에 있어서 불필요해진 데이터를 안전하게 영구삭제할 최선의 방법을 찾고 있습니다. 단순히 데이터를 삭제하거나 포맷하는 것은 영구적인 삭제 방법이 아니며, 민감한 정보를 남겨두게 됩니다. 데이터 보존 및 삭제에 관한 규정을 준수하고 있음을
          	     임증하기 위한 감사 추적 역시 중요합니다.<br />
          	   <br />소프트웨어 기반의 데이터 삭제는 Gartner NIST(미국 국립표준기술연구소), ISO에서 권장하는 데이터 삭제 방법이며 삭제 후 IT자산을 재사용/재판매 기증할 수 있습니다. Blancco 데이터 삭제 솔루션은 전체 데이터 수명주기에서 영구적인 삭제를 보장하며, 규정 준수를 입증할 수 있습니다.</li>
        </ul>        
        <h4 class="h4font">기능</h4>
        <ul class="mb40">
        <li class="mt20"><img src="./images/product/product_blancco_img002.PNG" alt="Blancco" style="width:100%;"></li>
        <li class="mt20"><img src="./images/product/product_blancco_img003.PNG" alt="Blancco" style="width:100%;"></li>
       	</ul>       	
       	<h4 class="h4font">제품</h4>
        <ul class="mb40">
        	<li class="mt20"><img src="./images/product/product_blancco_img004.PNG" alt="Application Security" style="width:50%;"></li>
        </ul>
       	</ul>      
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
