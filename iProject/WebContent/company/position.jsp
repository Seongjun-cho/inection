<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<jsp:include page="../include/head.jsp" flush="true" />

<!-- Add JS -->
<script type="text/javascript">
<!--
$(function(){
        var mact = $('.gnb_06');
        var mactDis = $('.gnb_06 ul');
        var mactOver = $('.gnb_06');

        mact.addClass("active");
        mactDis.css("display","block");
        mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//-->
</script>

<!--contents-->

<div id="subContents_wrap">
  <div class="subContents bg0101">
    <jsp:include page="../include/leftmenu01.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > 회사소개 > 위치</li>
                  <li class="title">위치</li>
        </ul>
      </div>
      <div class="contents">
        <!--//내용시작-->
        <table>
        	<tr>
			<td align="bottom">
        			<p class="con_top"><img src="./images/company/company_map_top.png" alt=""></p>
			</td>
			<td align="top">			
		<strong>(본사)서울시 구로구 디지털로31길 12 태평양물산 2층 90호</strong><br />
            <strong class="f_blue"> TEL </strong> 02-335-0434 <strong class="f_blue">FAX </strong> 02-853-3880 <br />
			<strong>(구미사업장)경북 구미시 구미대로 350-27 B 350호</strong><br />
            <strong class="f_blue"> TEL </strong> 070-7606-2852 <strong class="f_blue"> </strong>
        	</td>
			</tr>
		</table>
<!-- 다음 지도 삽입 -->
  <!-- * 카카오맵 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1574645699453" class="root_daum_roughmap root_daum_roughmap_landing"></div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1574645699453",
		"key" : "vyjf",
		"mapWidth" : "640",
		"mapHeight" : "360"
	}).render();
</script>
				
        <dl class="s_map">
          <dt><img src="./images/company/company_map_img01.gif" alt=""></dt>
          <dd>
            <h4><img src="./images/company/company_map_h401.gif" alt=""></h4>
            <ul>
              <li class="title"><strong class="f_7subway">남구로역 1번출구</strong> 방면 하차 후 약 775미터 이동 (디지털로 31길)</li> 
              <li class="none">남구로역 1번출구 앞에서 구로09번 버스를 이용하셔도 됩니다.<br />
                (KEB하나은행 정류장 하차)</li>			  
            </ul>
            <h4><img src="./images/company/company_map_h402.gif" alt=""></h4>
            <ul>
              <li class="title"><strong class="f_2subway">구로디지털단지역 3번출구</strong> 방면 하차 후 약 659미터 이동 (도림천로)</li>         
              <li class="none">구로디지털단지역 2번출구 앞에서 구로09번 버스 혹은 영등포01번 버스를 이용하셔도 됩니다.<br />
                (한국산업단지공단,KEB하나은행 정류장 하차)</li>
            </ul>
          </dd>
        </dl>

        <!--내용끝//-->
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />

