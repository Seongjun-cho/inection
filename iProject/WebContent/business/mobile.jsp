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
  <div class="subContents bg0301">
    <jsp:include page="../include/leftmenu03.jsp" flush="true" />
    <div class="contents_wrap">
      <div class="local_wrap">
        <ul>
          <li class="local">HOME > 사업영역 > Mobile CS Center</li>
		  <li class="title">Mobile CS Center</li>
		  <li class="subtitle1">모바일 고객센터</li>
		  <li class="subtitle2" style="font-size:25px;">Mobile Customer Center</li>
        </ul>
      </div>
      <div class="contents"> 
        <%--//내용시작--%>
        <h4 class="h4font">모바일 고객센터 개요</h4>
        <p class="mb20">Smart Phone을 이용하여 도시가스 사용 고객에게 실시간 요금조회, 민원신청, 정보제공 등의 고객 서비스를 제공함으로 고객 만족도를 증대시키고<br />
          Mobile Server의 활용으로 정보 운영자는 다양한 비즈니스 Logic의 적용과 변화를 보다 신속하고 편리한 서비스를 구현함 </p>
        <p class="mb40"><img src="./images/business/business_business2_img01.gif" alt=""></p>
        <table width="100%" cellpadding="0" cellspacing="0" border="0" class="table_blue mb40">
          <colgroup>
          <col width="150px" />
          <col width="150px" />
          <col width="*" />
          </colgroup>
          <tr>
            <th>대메뉴</th>
            <th>소메뉴</th>
            <th>내용</th>
          </tr>
          <tr>
            <td rowspan="5">요금조회</td>
            <td>월별상세요금조회</td>
            <td class="detail">당월 발급된 고지서의 요금을 상세 조회</td>
          </tr>
          <tr>
            <td>연간사용현황</td>
            <td class="detail">12개의 월을 그래프로 표시하여 조회</td>
          </tr>
          <tr>
            <td>사용요금계산</td>
            <td class="detail">전월 지침과 금월 지침을 비교하여 예상금액 산출 </td>
          </tr>
          <tr>
            <td>이전주소지 요금조회</td>
            <td class="detail">이전에 살고 있던 주소를 대한 요금 조회 </td>
          </tr>
          <tr>
            <td>미납요금조회</td>
            <td class="detail">미납요금에 대한 조회와 납부계좌조회 </td>
          </tr>
          <tr>
            <td rowspan="3">고객서비스</td>
            <td>방문서비스신청</td>
            <td class="detail">전출, 전입, 안전점검 및 G/M 교체에 대한 신청 및 이력</td>
          </tr>
          <tr>
            <td>Email/문자 청구서 신청</td>
            <td class="detail">Email 혹은 문자 청구서 신청 및 변경, 해지</td>
          </tr>
          <tr>
            <td>세금계산서 신청</td>
            <td class="detail">세금계산서를 신청</td>
          </tr>
          <tr>
            <td>자가검침</td>
            <td>자가검침</td>
            <td class="detail">자가검침에 대한 이력조회 및 요금계산, 자가검침등록</td>
          </tr>
          <tr>
            <td>나의정보</td>
            <td>도시가스사용세대정보</td>
            <td class="detail">검침일, 납부마감일, 납부방법등을 조회</td>
          </tr>
          <tr>
            <td rowspan="3">고객커뮤니티</td>
            <td>FAQ</td>
            <td class="detail">자주하는 질문과 답변을 조회</td>
          </tr>
          <tr>
            <td>공지사항</td>
            <td class="detail">공지사항을 조회</td>
          </tr>
          <tr>
            <td>보일러 A/S Center</td>
            <td class="detail">사용하고 있는 보일러에 대한 A/S Center의 전화번호 및 홈페이지를 조회</td>
          </tr>
        </table>
        
        <h4 class="h4font">모바일 고객센터 특장점</h4>
        <ul class="mb20">
          <li>- AES 암호화로 안정적인 시스템</li>
          <li>- 모바일 단말기 특성을 고려해 깔끔하며 필요한 정보를 알기 쉽게 정리해 놓은 UI</li>
          <li>- 업데이트 혹은 암호화 키가 바뀌었을 시 클라이언트를 업데이트 하지 않고, Server를 재부팅 하지 않아도 교체가능</li>
          <li>- 요금계산시 계량기 교체 혹은 회전 여부 선택이 가능하여 요금 산출에 용이</li>
        </ul>
        <p><img src="./images/business/business_business2_img02.gif" alt=""></p>
        <%--내용끝//--%> 
      </div>
    </div>
  </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
