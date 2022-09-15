<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
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
function boardSearchBtn(){
	$("#curPage").val(1);
	$("#wform").attr("action","Recruit_List").submit();
}
function onView(recruitNO,rnum){
	$("#sseq").val(recruitNO);
	$("#rnum").val(rnum);
	$("#wform").attr("action","Recruit_View").submit();
}
function writeFormBtn(){
	$("#inputType").val("insert");
	$("#wform").attr("action","Recruit_InputForm").submit();
}
function searchPage(cPage) {
	$("#curPage").val(cPage);
	$("#wform").attr("action","Recruit_List.action").submit();
}
</script>


<%--contents--%>
<div id="subContents_wrap">

	<div class="subContents bg0402">

		<jsp:include page="../include/leftmenu04.jsp" flush="true" />
               
        <div class="contents_wrap">
        	<div class="local_wrap">
            	<ul>
					<li class="local">HOME > 채용정보 > 채용공고</li>
					<li class="title">채용공고</li>
                </ul>
            </div>
            <div class="contents mt120">
                <%-- bbs Start --%>
				<table border="0" width="764" class="bbs_list">
					<thead>
						<tr>
							<th width="99">번호</th>
                            <th width="456">제목</th>
                            <th width="102">등록일</th>
							<th width="105">진행상황</th>							
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty recruitList}">
								<tr>
									<td colspan="4">등록된 게시물이 없습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="recruitList" items="${recruitList}" >
									<tr>
										<td>${recruitList.RNUM}</td>
										<td><a href="javascript:onView('${recruitList.sseq}','${recruitList.RNUM}')">${recruitList.subject}</a></td>
										<td>${recruitList.regdate}</td>
										<td><img src="./images/recruit/icon_ing.gif" alt="진행중"><%-- <img src="./images/recruit/icon_end.gif" alt="마감"> --%></td>
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
					<img src="./images/common/btn_first.gif" align="absmiddle" border="0" class="img"> &nbsp;
					<img src="./images/common/btn_prev.gif" align="absmiddle" border="0" class="img"> &nbsp;&nbsp;
					<a href="#"  class='aa'  style='color:#ed1c24; font-weight:bold'>1</a> &nbsp; 
					<img src="./images/common/btn_next.gif" align="absmiddle" border="0" class="img">&nbsp; <a href="#">
					<img src="./images/common/btn_last.gif" align="absmiddle" border="0" class="img"></a>
				</div>
				 --%>
				<%-- paging End --%>
            
				<%-- search Start --%>
                <div class="bbs_search">
                	<div class="search">
                        <form method="post" id="wform">
                        <input type="hidden" name="curPage" id="curPage" value="${recruitVO.curPage}"/>
                        <input type="hidden" name="sseq" id="sseq" value="0" />
                        <input type="hidden" name="rnum" id="rnum" value="0" />  
                        <input type="hidden" name="inputType" id="inputType" value="" />
                        <select name="searchType" id="searchType" style="width:75px;">
                            <option value="">전체</option>
                            <option value="SUBJECT" <c:if test="${recruitVO.searchType=='SUBJECT'}">selected</c:if>>제목</option>                            
                            <option value="CONTENT" <c:if test="${recruitVO.searchType=='CONTENT'}">selected</c:if>>내용</option>
                        </select>
                        <input type="text" style="width:150px;" name="searchString" id="searchString" value="${recruitVO.searchString}" class="text"/>
                        <a href="javascript:boardSearchBtn()"><img src="./images/common/btn_search.gif" alt="조회" /></a>
                        </form>
                    </div>
                </div>
				<%-- search end --%>
                <c:if test="${session.user_id=='inection'}"><p class="btn_right"><a href="javascript:writeFormBtn()"><img src="./images/common/btn_write.gif" alt="글쓰기"></a></p></c:if>
                <%-- bbs End --%>
            </div>
        </div>
            
    </div>
</div>

<jsp:include page="../include/footer.jsp" flush="true" />
