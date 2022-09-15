<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:include page="../include/head.jsp" flush="true" />
<%-- Add JS --%>
<script type="text/javascript">
<!--
$(function(){
	var mact = $('.gnb_04');
	var mactDis = $('.gnb_04 ul');
	var mactOver = $('.gnb_04');

	mact.addClass("active");
	mactDis.css("display","block");
	mactOver.eq(0).attr("class", "active");// 메뉴순서 0부터 시작
});
//-->
$(document).ready(function(){
	<c:if test="${referenceVO.inputType == 'update'}">
		$("#BtnSave").hide(); 
		$("#BtnUpdate").show();
	</c:if>
	<c:if test="${referenceVO.inputType == 'insert'}">
		$("#BtnSave").show();
		$("#BtnUpdate").hide(); 
	</c:if>
	
	//TODO
	// 목록으로
});
function BtnList(){
	$("#form").attr("action","referenceList").submit();
}
function BtnSave(){
	$("#form").attr("action", "referenceSubmit").submit();
}
function BtnUpdate(){
	$("#form").attr("action", "referenceSubmit").submit();
}
</script>
<%--contents--%>
<div id="subContents_wrap">

	<div class="subContents bg0501">

		<jsp:include page="../include/leftmenu05.jsp" flush="true" />
               
        <div class="contents_wrap">
        	<div class="local_wrap">
            	<ul>
                    <li class="local"><img src="./images/center/local04.png" alt="HOME>고객센터>자료실"></li>
                	<li class="title"><img src="./images/center/subtitle04.png" alt="자료실"></li>
                </ul>
            </div>
            <div class="contents">
            	<p class="pb47"><img src="./images/center/0101.png" alt=""></p>
				<form name="form" id="form" action="" method="post" enctype="multipart/form-data" >
					<input type="hidden" name="inputType" value="${referenceVO.inputType}" />
					<input type="hidden" name="curPage" id="curPage" value="${referenceVO.curPage}"/>
					<input type="hidden" name="sseq" id="sseq" value="${referenceVO.sseq}" />
					<input type="hidden" name="writer" id="writer" value="${session.user_id}" />
			 			<table width="764" cellpadding="0" cellspacing="0" class="bbs_view" >
						<colgroup>
	                        <col width="95"/>
	                        <col width="669"/>
	                    </colgroup>
						<tbody>
						<tr>
                    	<th>제목</th>
	                    	<td><input type="text" id="subject" name="subject" title="제목을 입력하세요" class="text" value="${referenceVO.subject}" style="width:97%;"></td>
	                	</tr>
	                	<tr>
	                    	<th>내용</th>
	                    	<td><textarea name="content" id="content" cols="30" rows="10" style="width:97%; height:200px; margin:8px 0 8px 0;" class="area"><c:if test="${referenceVO.inputType == 'update'}">${referenceVO.content}</c:if></textarea></td>
	                    </tr> 
	                    <tr>
	                    	<th>파일</th>
	                    	<td><input type="file" name="filename" value="" class="fileup" style="width:300px;" ></td>
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
</html>