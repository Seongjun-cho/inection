<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:useBean id="check" class="com.inection.util.ConventionCheckUtil" />
<%
	String rnum  = check.clearXSS(check.convertIsNull(request.getParameter("rnum")));
%>
<jsp:include page="../include/head.jsp" flush="true" />
<%-- Add JS --%>
<script type="text/javascript">
$(function(){
	var mact = $('.gnb_02');
	var mactDis = $('.gnb_02 ul');
	var mactOver = $('.gnb_02');

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
	
	<c:forEach items="${qnaList}" var="qnaList" > 
		listSub.push("${qnaList.subject}");
		listSeq.push("${qnaList.sseq}"); 
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
	$("#wform").attr("action","QNA_InputForm").submit();
	}
	function BtnDelete(){
	var re = confirm("삭제하시겠습니까?");
	if(re){		
		$("#wform").attr("action","QNA_Delete").submit();
		return;
	}else{
		return;
	}
	}
	function onView(recruitNO,rnum){
	$("#sseq").val(recruitNO);
	$("#rnum").val(rnum);
	$("#wform").attr("action","QNA_View").submit();
	}
</script>


<%--contents--%>
<div id="subContents_wrap">

	<div class="subContents bg0501">

		<jsp:include page="../include/leftmenu05.jsp" flush="true" />
               
        <div class="contents_wrap">
        	<div class="local_wrap">
            	<ul>
		          <li class="local">HOME > 고객센터 > Q&A</li>
				  <li class="title">Q&A</li>
                </ul>
            </div>
            <div class="contents">
            	<p class="pb47"><img src="./images/center/0201.png" alt=""></p>

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
                    	<td colspan="3">${qnaVO.subject}</td>
                	</tr>
               		<tr>
                    	<%-- <th>작성자</th>
                    	<td>${qnaVO.q_id}</td> --%>
                    	<th>등록일</th>
                    	<td>${qnaVO.regdate}</td>
                	</tr>
                	<tr>
                    	<th>전화번호</th>
                    	<td>${qnaVO.phone}</td>
                    	<th>이메일</th>
                    	<td>${qnaVO.email}</td>
                    </tr>
                    <tr>
                    	<th>내용</th>
                    	<td colspan="3">${qnaVO.content}</td>
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
	                	<input type="hidden" name="sseq" id="sseq" value="${qnaVO.sseq}" />
						<input type="hidden" name="curPage" id="curPage" value="${qnaVO.curPage}"/>
	                    <input type="hidden" name="rnum" id="rnum" value="0" />  
	                    <input type="hidden" name="inputType" id="inputType" value="" />	        
		            </form>
	                
	                <p class="btn_right">
	                <a href="javascript:BtnUpdate()"><img src="./images/common/btn_update.gif" alt="수정" id="BtnUpdate"></a>
	                <a href="javascript:BtnDelete()"><img src="./images/common/btn_delete.gif" alt="삭제" id="BtnDelete"></a>
	                <a href="/QNA_List"><img src="./images/common/btn_list.gif" alt="목록"></a>
	                </p>
	                <%-- bbs End --%>
                <%-- bbs End --%>

            </div>
        </div>
            
    </div>
</div>

<jsp:include page="../include/footer.jsp" flush="true" />
