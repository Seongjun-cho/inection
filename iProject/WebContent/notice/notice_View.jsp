<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:include page="../include/head.jsp" flush="true" />
<jsp:useBean id="check" class="com.inection.util.ConventionCheckUtil" />
<%
	String rnum = check.clearXSS(check.convertIsNull(request.getParameter("rnum")));
%>

<%-- Add JS --%>
<script type="text/javascript">
$(function(){
	var mact = $('.gnb_01');
	var mactDis = $('.gnb_01 ul');
	var mactOver = $('.gnb_01');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
	
	var rnum = "<%=rnum%>";
	
	var subjectPrev = "";
	var subjectNext = "";
	var seqPrev = "";
	var seqNext = "";
	var rnumPrev = "";
	var rnumNext = "";
	
	var stringPrev = "";
	var stringNext = "";
	
	var listSub = new Array();
	var listSeq = new Array();
	
	<c:forEach items="${list}" var="list"> 
		listSub.push("${list.subject}");
		listSeq.push("${list.sseq}"); 
	</c:forEach> 
	
	if(listSub[rnum-2]!=null){
		subjectPrev = listSub[rnum-2];
		seqPrev = listSeq[rnum-2];
		rnumPrev = rnum - 1;
	}else{
		subjectPrev ="";
		seqPrev ="";
		rnumPrev = "";
	}
	if(listSub[rnum]!=null){
		subjectNext = listSub[rnum];
		seqNext = listSeq[rnum];
		rnumNext = rnum + 1;
	}else{
		subjectNext = "";	
		seqNext ="";
		rnumNext = "";
	}
	
	stringPrev = "<a href='javascript:onView(\""+seqPrev+"\",\""+rnumPrev+"\");'>"+subjectPrev+"</a>";	 
	stringNext = "<a href='javascript:onView(\""+seqNext+"\",\""+rnumNext+"\");'>"+subjectNext+"</a>";	 
	
	$(".prev").html(stringPrev);	
	$(".next").html(stringNext);
});
function BtnUpdate(){
	$("#inputType").val("update");
	$("#wform").attr("action","noticeInputForm").submit();
}
function BtnDelete(){
	var re = confirm("삭제하시겠습니까?");
	if(re){		
		$("#wform").attr("action","notice_Delete").submit();
		return;
	}else{
		return;
	}
}
function onView(recruitNO,rnum){
	$("#sseq").val(recruitNO);
	$("#rnum").val(rnum);
	$("#wform").attr("action","noticeView").submit();
}

function downloadFile(fPath, fName, fGbn){
	window.open("./download/NewFile.jsp?filePath="+fPath+"&fileName="+fName+"."+fGbn.split(".")[1]);
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
                <table width="764" cellpadding="0" cellspacing="0" class="bbs_view" >
                    <colgroup>
                        <col width="96"/>
                        <col width="287"/>
                        <col width="95"/>
                        <col width="287"/>
                    </colgroup>
                    <tr>
                    	<th>제목</th>
                    	<td>${noticeVO.subject}</td>
                    	<th>작성자</th>
                    	<td>${noticeVO.writer}</td>
                	</tr>
               		<tr>
                    	<th>등록일</th>
                    	<td>${noticeVO.regdate}</td>
                    	<th>조회</th>
                    	<td>${noticeVO.cnt}</td>
                	</tr>
                	<tr>
                	<c:choose>
                		<c:when test="${noticeVO.isfile=='Y'}">
                    	<th>첨부파일</th>
                    	<td colspan="3">
                    		<a href="javascript:downloadFile('${noticeVO.file_path}','${noticeVO.filerename}','${noticeVO.filename}');">${noticeVO.filename}</a>
                    	</td>
                    	</c:when>
                    	<c:otherwise>
                    	<th>첨부파일</th>
                    	<td colspan="3">등록된 파일이 없습니다</td>
                    	</c:otherwise>
                    </c:choose>
                    </tr>
                    <tr>
                    	<th>내용</th>
                    	<%--local --%>
                    	<td colspan="3"><pre>${noticeVO.content}</pre><img src="./images/notice_file_img/${noticeVO.filerename}.PNG"></td>
                    	<%--server --%>
                    	<%-- <td colspan="3"><pre>${noticeVO.content}</pre><img src="./upload/${noticeVO.filerename}.PNG"></td> --%>
                    </tr>
                </table>

                <table width="789" cellpadding="0" cellspacing="0" class="bbs_foot">
                    <colgroup>
                        <col width="103"/>
                        <col width="659"/>
                    </colgroup>
                	<tr>
                    	<th>이전글</th>
                    	<td class="prev"></td>
                	</tr>
                	<tr>
                    	<th>다음글</th>
                    	<td class="next"></td>
                	</tr>
                </table>
                <form method="post" id="wform">
                	<input type="hidden" name="sseq" id="sseq" value="${noticeVO.sseq}" />
					<input type="hidden" name="curPage" id="curPage" value="${noticeVO.curPage}"/>
                    <input type="hidden" name="rnum" id="rnum" value="" />  
                    <input type="hidden" name="inputType" id="inputType" value="" />	        
	            </form>
                
                <p class="btn_right">
                <c:if test="${session.user_id=='inection'}">
                <a href="javascript:BtnUpdate()"><img src="./images/common/btn_update.gif" alt="수정" id="BtnUpdate"></a>
                <a href="javascript:BtnDelete()"><img src="./images/common/btn_delete.gif" alt="삭제" id="BtnDelete"></a>
                </c:if>
                <a href="/noticeList"><img src="./images/common/btn_list.gif" alt="목록"></a>
                </p>
                <%-- bbs End --%>
                <%-- bbs End --%>

            </div>
        </div>
            
    </div>
</div>

<jsp:include page="../include/footer.jsp" flush="true" />
