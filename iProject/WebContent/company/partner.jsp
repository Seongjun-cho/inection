<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_05');
	var mactDis = $('.gnb_05 ul');
	var mactOver = $('.gnb_05');

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
          <li class="local">HOME > 회사소개 > 파트너사/고객사</li>
		  <li class="title">파트너사/고객사</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <p class="con_top"><img src="./images/company/company_organization_top.png" alt=""></p>
        <ul class="partner">
          <li><img src="./images/company/company_partner_img01.gif" alt=""></li>
          <li><img src="./images/company/company_partner_img02.gif" alt=""></li>
          <li><img src="./images/company/company_partner_img03.gif" alt=""></li>
          <li class="last"><img src="./images/company/company_partner_img04.PNG" alt=""></li>
        </ul>
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
