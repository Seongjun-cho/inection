<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:include page="../include/head.jsp" flush="true" />

<%-- Add JS --%>
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_03');
	var mactDis = $('.gnb_03 ul');
	var mactOver = $('.gnb_03');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//-->
function writeFormBtn(){
	$("#inputType").val("insert");
	$("#wform").attr("action","FAQ_InputForm").submit();
}
</script>


<%--contents--%>
<div id="subContents_wrap">
	<div class="subContents bg0501">
		<jsp:include page="../include/leftmenu05.jsp" flush="true" />
        <div class="contents_wrap">
        	<div class="local_wrap">
            	<ul>
		          <li class="local">HOME > 고객센터 > FAQ</li>
				  <li class="title">FAQ</li>
                </ul>
            </div>
            <div class="contents">
            	<p class="pb47"><img src="./images/center/0301.png" alt=""></p>
				<script type="text/javascript">
                function show_content(content_no){
                  var menu_cnt = 5; // 전체 메뉴 갯수
                  for(var i=1; i<=menu_cnt; i++){
                    if(i == content_no){  // 제목을 클릭한 글
                      document.getElementById("subject"+i).bgColor = "#ffffff";   // 제목 배경색 변경
                      document.getElementById("content"+i).style.display = "block";  // 내용 보여주기 
                    }
                    else{   // 나머지 글
                      document.getElementById("subject"+i).bgColor = "";   // 제목 배경색 초기화
                      document.getElementById("content"+i).style.display = "none";  // 내용 감추기
                    }
                  }
                }
                </script>

                <table class="faq">
                	<c:choose>
							<c:when test="${empty faqList}">
								<tr>
									<td>등록된 게시물이 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="faqList" items="${faqList}" varStatus="no">
									<tbody id="subject${no.count}">
				                  		<tr>
				                    		<td class="icon"><img src="./images/center/icon_q.gif" alt="q"></td>
				                    		<td class="q"><a href="javascript:show_content('${no.count}');">${faqList.question}</a></td>
				                  		</tr>
				                  	</tbody>
				                  	<tbody id="content${no.count}" class="ancer">
				                  		<tr>
				                        	<td class="icon"><img src="./images/center/icon_a.gif" alt="a"></td>
				                    		<td class="a">${faqList.answer}</td>
				                  		</tr>
				                  	</tbody>
								</c:forEach>		
							</c:otherwise>
						</c:choose>
                </table>
                <form method="post" id="wform">
	                <input type="hidden" name="inputType" id="inputType" value="" />
                </form>
                <c:if test="${session.user_id=='admin'}"><p class="btn_right"><a href="javascript:writeFormBtn()"><img src="./images/common/btn_write.gif" alt="글쓰기"></a></p></c:if>                
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
