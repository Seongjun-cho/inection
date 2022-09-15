<jsp:include page="/include/head.jsp" flush="true" />

</div>
<%--//head--%>

<%--mainVisual--%>
<div id="contWrap" style="display:none">
	<div id="slider1">
		<div class="panel1"></div>
		<div class="panel2"></div>
		<div class="panel3"></div>
	</div>
</div>
<script type="text/javascript">
	(function($) {
		$(document).ready(function() {
			$('#contWrap').show();
			var $slider = $('#slider1').bxSlider({
				pause: '10000',
				randomStart: false,
				auto: true,
				pager: true,
				speed: 800,
				controls: false
			});
			$('#slider2').bxSlider({
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
			});
			$(window).resize(function(){
				$slider.reloadShow();
			});

		});
	})(jQuery);
</script>
<%--//mainVisual--%>

<div class="mainContents_wrap">
	<ul>
    	<li class="caltalog"><a href="#"><img src="/images/main/caltalog.png" alt="전자카다로그 -크린피아의 제품을 알려드립니다." /></a></li>
        <li class="manual"><a href="#"><img src="/images/main/manual.png" alt="제품메뉴얼 다운로드 -해당 제품의 메뉴얼을 다운 받으실 수 있습니다." /></a></li>
        <li class="award_index"><a href="#"><img src="/images/main/award.png" alt="인증 및 수상내역 -크린피아에서 지금까지 수상한 특허 인증 및 수상내역입니다." /></a></li>
        <%--공지사항--%>
        <li class="notice_wrap">
        	<div class="notice">
            	<h3><img src="/images/main/title_notice.gif" alt="공지사항" /></h3>
                <p><img src="/images/main/btn_more.gif" alt="더보기" /></p>
                <ul>
                	<li class="list"><a href="#">독일 Illertisser신문 2012년 6월9일 기사</a></li>
                    <li class="day">2012.06.12</li>
                  <li class="list"><a href="#">쿨미스트 노즐 설치사진입니다.</a></li>
                    <li class="day">2012.06.12</li>
                  <li class="list"><a href="#">셀프세차장용 브러시리필 비교 사진입니다.</a></li>
                    <li class="day">2012.06.12</li>
                </ul>
            </div>
        </li>
        <%--//공지사항--%>
        <li class="agent"><a href="#"><img src="/images/main/agent.jpg" alt="대리점 현황 -대리점 현황을 알려드립니다." /></a></li>
        <li class="center"><a href="#"><img src="/images/main/center.jpg" alt="고객센터 1600-5335 전국 어디서나 국번없이 사용하세요." /></a></li>
        <li>
            <%--협력사 배너--%>
            <div id="amazon_scroller2" class="amazon_scroller" >
                <div class="amazon_scroller_mask" >
                    <ul>
                        <li><a href="link1"><img src="/images/main/001.gif" alt=""/></a></li>
                        <li><a href="link2"><img src="/images/main/002.gif" alt=""/></a></li>
                        <li><a href="link3"><img src="/images/main/003.gif" alt=""/></a></li>
                        <li><a href="link4"><img src="/images/main/004.gif" alt=""/></a></li>
                        <li><a href="link5"><img src="/images/main/005.gif" alt=""/></a></li>
                    </ul>
                </div>
                <ul class="amazon_scroller_nav">
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <script language="javascript" type="text/javascript">
            
                $(function() {
                            
                    $("#amazon_scroller2").amazon_scroller({
                        scroller_title_show: 'disable',
                        scroller_time_interval: '3000',
                        scroller_window_background_color: "none",
                        scroller_window_padding: '0',
                        scroller_border_size: '0',
                        scroller_border_color: '#CCC',
                        scroller_images_width: '190',
                        scroller_images_height: '78',
                        scroller_title_size: '12',
                        scroller_title_color: 'black',
                        scroller_show_count: '5',
                        directory: 'images/main'
                        });
                        
                });
            </script>    
            <%--//협력사 배너--%>
        </li>
    </ul>
    
</div>

<jsp:include page="/include/footer.jsp" flush="true" />


