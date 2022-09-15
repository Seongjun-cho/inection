<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:include page="../include/head.jsp" flush="true" />
<%-- Add JS --%>
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_01');
	var mactDis = $('.gnb_01 ul');
	var mactOver = $('.gnb_01');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//-->
function writeFormBtn(){
	$("#inputType").val("insert");
	$("#wform").attr("action","noticeInputForm").submit();
}
function boardSearchBtn(){
	$("#curPage").val(1);
	$("#wform").attr("action","noticeList").submit();
}
function onView(noticeNO,rnum){
	$("#sseq").val(noticeNO);
	$("#rnum").val(rnum);
	$("#wform").attr("action","noticeView").submit();
}
function searchPage(cPage) {
	$("#curPage").val(cPage);
	$("#wform").attr("action","noticeList.action").submit();
} 
</script>


<%--contents--%>
<div id="subContents_wrap">

	<div class="subContents bg0501">

		<jsp:include page="../include/leftmenu05.jsp" flush="true" />
               
        <div class="contents_wrap">
        	<div class="local_wrap">
            	<ul>
		          <li class="local">HOME > 고객센터 > 공지사항</li>
				  <li class="title">공지사항</li>
                </ul>
            </div>
            <div class="contents">
            	<p class="pb47"><img src="./images/center/0101.PNG" alt=""></p>

                <%-- bbs Start --%>
				<table border="0" width="764" class="bbs_list">
					<thead>
						<tr>
							<th width="80">번호</th>
                            <th width="522">제목</th>
                            <th width="84">등록일</th>
							<th width="78">조회</th>
						</tr>
					</thead>

					 <tbody>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="4">등록된 게시물이 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="list" items="${list}">
									<tr>
										<td>${list.RNUM}</td>
										<td><a href="javascript:onView('${list.sseq}','${list.RNUM}')">${list.subject}</a></td>
										<td>${list.regdate}</td>
										<td>${list.cnt}</td>
									</tr>
								</c:forEach>		
							</c:otherwise>
						</c:choose>
                    </tbody> 
                </table>
				<%-- paging start --%>	
				<div class="paging"><c:if test="${!empty paging}">${paging.pageHtml}</c:if></div>
				<%-- 
				<div class="paging">				
					<img src="./images/common/btn_first.gif" align="absmiddle" border="0" class="img"> &nbsp;<img src="./images/common/btn_prev.gif" align="absmiddle" border="0" class="img"> &nbsp;&nbsp;<a href="#"  class='aa'  style='color:#ed1c24; font-weight:bold'>1</a></span> &nbsp <a href="#"  class='aa'>2</a> &nbsp;&nbsp; <img src="./images/common/btn_next.gif" align="absmiddle" border="0" class="img">&nbsp; <a href="#"><img src="./images/common/btn_last.gif" align="absmiddle" border="0" class="img"></a>
				</div>
				--%>
				<%-- paging End --%>
				<%-- search Start --%>
                <div class="bbs_search">
                	<div class="search">
                        <form method="post" id="wform">
                        <input type="hidden" name="curPage" id="curPage" value="${noticeVO.curPage}"/>
                        <input type="hidden" name="sseq" id="sseq" value="0" />
                        <input type="hidden" name="rnum" id="rnum" value="0" />
                        <input type="hidden" name="inputType" id="inputType" value="" />
                        <select name="searchType" id="searchType" style="width:75px;">
                            <option value="SUBJECT" <c:if test="${noticeVO.searchType=='SUBJECT'}">selected</c:if>>제목</option>                            
                            <option value="CONTENT" <c:if test="${noticeVO.searchType=='CONTENT'}">selected</c:if>>내용</option>
                        </select>
                        <input type="text" style="width:150px;" name="searchString" id="searchString" value="${noticeVO.searchString}" class="text"/>
                        <a href="javascript:boardSearchBtn()"><img src="./images/common/btn_search.gif" alt="조회" /></a>
                        </form>
                    </div>
                </div> 
				<%-- search end --%>
                <%-- bbs End --%>
                <c:if test="${session.user_id=='inection'}"><p class="btn_right"><a href="javascript:writeFormBtn()"><img src="./images/common/btn_write.gif" alt="글쓰기"></a></p></c:if>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../include/footer.jsp" flush="true" />
