<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:include page="/include/head.jsp" flush="true" />
<div id="contWrap" style="display:none">
	<div id="slider1">
		<div class="panel1"></div>
 		<!-- <div class="panel2"></div>
		<div class="panel3"></div> -->
	</div>
</div>
<script type="text/javascript">
	(function($) {
		$(document).ready(function() {
			$('#contWrap').show();
			var $slider = $('#slider1').bxSlider({
				pause: '10000',
				randomStart: false,
				//auto: true,
				//pager: true,
				speed: 800,
				controls: false
			});
			/* $('#slider2').bxSlider({
				pager: false
			});
			$('#slider3').bxSlider({
				pause: '7000',
				auto: true,
				speed: 800,
				pager: true,
				controls: false
			});
			$('#slider4').bxSlider({
				auto: false,
				displaySlideQty: 9,
				moveSlideQty: 1
			}); */
			$(window).resize(function(){
				$slider.reloadShow();
			});

		});
	})(jQuery);
function onView(qnaNO, count, gbn){
	$("#sseq").val(qnaNO);
	$("#count").val(count);
	if(gbn=="qna"){
		$("#wform").attr("action","QNA_View").submit();
	}else if(gbn=="notice"){
		$("#wform").attr("action","noticeView").submit();
	}
}
</script>
<%--//mainVisual--%>

<div class="mainContents_wrap">
	<form method="post" id="wform">
		<input type="hidden" name="sseq" id="sseq" value="0" />
		<input type="hidden" name="count" id="count" value="0" /> 
	</form>
	<ul class="line1">
        <%--공지사항--%>
        <li class="notice_wrap">
        	<div class="notice">
            	<h3><img src="./images/main/title_notice.gif" alt="공지사항" /></h3>
                <p><a href="javascript:go_51();"><img src="./images/main/btn_more.gif" alt="더보기" /></a></p>
               	<c:choose>
					<c:when test="${empty noticeList}">
						<ul>
							<li class="list">등록된 게시물이 없습니다.</li>
							<li class="day"></li>
						</ul>
					</c:when>
					<c:otherwise>
						<c:forEach var="notilist" items="${noticeList}" varStatus="status" end="1">
							<ul>
								<li class="list"><a href="javascript:onView('${notilist.sseq}','${status.index}','notice')">${notilist.subject}</a></li>
								<li class="day"><a href="javascript:onView('${notilist.sseq}','${status.index}','notice')">${notilist.regdate}</a></li>
							</ul>
						</c:forEach>		
					</c:otherwise>
				</c:choose>
            </div>
        </li>
        <%--//공지사항--%>

        <%--고객게시판--%>
        <%--고객게시판 -> 문의하기로 변경 20201222 --%>
<%--         <li class="customer_wrap">
        	<div class="customer">
            	<h3><img src="./images/main/title_customer.gif" alt="고객게시판" /></h3>
                <p><a href="javascript:go_52();"><img src="./images/main/btn_more.gif" alt="더보기" /></a></p>
                <c:choose>
					<c:when test="${empty qnaList}">
						<ul>
							<li class="list">등록된 게시물이 없습니다.</li>
							<li class="day"></li>
						</ul>
					</c:when>
					<c:otherwise>
						<c:forEach var="qnaList" items="${qnaList}" varStatus="status" end="1">
							<ul>
								<li class="list"><a href="javascript:onView('${qnaList.sseq}','${status.index}','qna')">${qnaList.subject}</a></li>
								<li class="day"><a href="javascript:onView('${qnaList.sseq}','${status.index}','qna')">${qnaList.regdate}</a></li>
							</ul>
						</c:forEach>		
					</c:otherwise>
				</c:choose>
            </div>
        </li> --%>
        <%--//고객게시판--%>
        
        <li><a href="javascript:go_11();"><img src="./images/main/btn_company.gif" alt="회사소개서" /></a></li>
        <li><a href="javascript:go_21();"><img src="./images/main/btn_product.gif" alt="제품소개서" /></a></li>
    </ul>
    
    <ul class="line1">
    	<div class="banner">
        	<ul>
				<li><li>
            </ul>
        </div>
    </ul>
    
    <ul class="line2">
    	<div class="banner">
        	<ul>
    			<li class="solution"><a href="javascript:go_21();"><img src="./images/main/banner_solution.jpg" alt="솔루션소개-효용성과 실용성이 극대화된 아이넥션소프트만의 솔루션을 소개합니다..." /></a></li>
                <li class="business"><a href="javascript:go_35();"><img src="./images/main/banner_business.jpg" alt="사업영역-스마트빌딩 시스템, 장사관리 시스템 모바일, 고객사콜센터 APP 아이넥션소프트만의 기술을 한눈에 확인하세요." /></a></li>
                <li class="map"><a href="javascript:go_16();"><img src="./images/main/banner_map.PNG" alt="찾아오시는길-주식회사 아이넥션소프트의 찾아오시는 길입니다. 궁금하신 사항이 있으시면 언제든 방문해 주시기 바랍니다." /></a></li>
            </ul>
        </div>
    </ul>
    
    
</div>

<jsp:include page="/include/footer.jsp" flush="true" />


