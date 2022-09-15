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
$(document).ready(function(){
	<c:if test="${faqVO.inputType == 'update'}">
		$("#BtnSave").hide(); 
		$("#BtnUpdate").show();
	</c:if>
	<c:if test="${faqVO.inputType == 'insert'}">
		$("#BtnSave").show();
		$("#BtnUpdate").hide(); 
	</c:if>
	
	//TODO
	// 목록으로
});
function BtnList(){
	$("#form").attr("action","FAQ_List").submit();
}
function BtnSave(){
	$("#form").attr("action", "FAQ_InputSubmit").submit();
}
function BtnUpdate(){
	$("#form").attr("action", "FAQ_InputSubmit").submit();
}
</script>
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
				<form name="form" id="form" action="" method="post">
					<input type="hidden" name="inputType" value="${faqVO.inputType}" />
					<input type="hidden" name="curPage" id="curPage" value="${faqVO.curPage}"/>
					<input type="hidden" name="sseq" id="sseq" value="${faqVO.sseq}" /> 
				 	<table width="764" cellpadding="0" cellspacing="0" class="bbs_view" >
						<colgroup>
	                        <col width="95"/>
	                        <col width="669"/>
	                    </colgroup>
						<tbody>
						<tr>
	                    	<th>질문</th>
	                    	<td><input type="text" id="question" name="question" title="제목을 입력하세요" class="text" value="${faqVO.question}" style="width:97%;"></td>
	                	</tr>
	                	<tr>
	                    	<th>답변</th>
	                    	<td><textarea name="answer" id="answer" cols="30" rows="10" style="width:97%; height:200px; margin:8px 0 8px 0;" class="area"><c:if test="${faqVO.inputType == 'update'}">${faqVO.answer}</c:if></textarea></td>
	                    </tr>
						</tbody>
					</table>
					<p class="btn_center">
					<a href="javascript:BtnSave()"><img src="./images/common/btn_ok.gif" alt="확인" id="BtnSave"></a>
					<a href="javascript:BtnUpdate()"><img src="./images/common/btn_ok.gif" alt="수정" id="BtnUpdate"></a>
					<a href="javascript:BtnList()"><img src="./images/common/btn_list2.gif" alt="목록" id="BtnList"></a>
					</p>
				 </form>
            </div>
        </div>
            
    </div>
</div>

<jsp:include page="../include/footer.jsp" flush="true" />