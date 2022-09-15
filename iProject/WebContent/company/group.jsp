<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%> 
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_04');
	var mactDis = $('.gnb_04 ul');
	var mactOver = $('.gnb_04');

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
          <li class="local">HOME > 회사소개 > 조직구조</li>
		  <li class="title">조직구조</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <p class="con_top"><img src="./images/company/company_organization_top.png" alt=""></p>
        <p><img src="./images/company/company_organization_img01.gif" alt=""></p>
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
