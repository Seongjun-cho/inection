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
$(document).ready(function(){
	<c:if test="${noticeVO.inputType == 'update'}">
		$("#BtnSave").hide(); 
		$("#BtnUpdate").show();
	</c:if>
	<c:if test="${noticeVO.inputType == 'insert'}">
		$("#BtnSave").show();
		$("#BtnUpdate").hide(); 
	</c:if>
	
	//TODO
	// 목록으로
});
function BtnList(){
	$("#form").attr("action","noticeList").submit();
}
function BtnSave(){
	if(subject.value == '') {
		alert('제목을 입력해주세요.');
		subject.focus();
		return false;
	} else {
		$("#form").attr("action", "noticeSubmit").submit();
	}
}
function BtnUpdate(){
	$("#form").attr("action", "noticeSubmit").submit();
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
            	
				<form name="form" id="form" action="" method="post" enctype="multipart/form-data" >
					<input type="hidden" name="inputType" value="${noticeVO.inputType}" />
					<input type="hidden" name="curPage" id="curPage" value="${noticeVO.curPage}"/>
					<input type="hidden" name="sseq" id="sseq" value="${noticeVO.sseq}" />
					<input type="hidden" name="writer" id="writer" value="${session.user_id}" />
			 			<table width="764" cellpadding="0" cellspacing="0" class="bbs_view" >
                    <colgroup>
                        <col width="95"/>
                        <col width="669"/>
                    </colgroup>
                    <tr>
                    	<th>제목</th>
                    	<td><input type="text" id="subject" name="subject" title="제목을 입력하세요" class="text" value="${noticeVO.subject}" style="width:97%;" Placeholder="제목을 입력해주세요."></td>
                	</tr>
                	<tr>
                    	<th>내용</th>
                    	<td><textarea name="content" id="content" cols="30" rows="10" style="width:97%; height:200px; margin:8px 0 8px 0;" class="area" Placeholder="내용을 입력해주세요."><c:if test="${noticeVO.inputType == 'update'}">${noticeVO.content}</c:if></textarea></td>
                    </tr> 
                    <tr>
                    	<th>파일</th>
                    	<td><input type="file" name="file" id="file" value="" class="text" style="width:300px;"></td>
                    </tr>
                </table>
                
                <p class="btn_center">
				<a href="javascript:BtnSave()"><img src="./images/common/btn_ok.gif" alt="확인" id="BtnSave"></a>
				<a href="javascript:BtnUpdate()"><img src="./images/common/btn_ok.gif" alt="수정" id="BtnUpdate"></a>
				<a href="javascript:BtnList()"><img src="./images/common/btn_list2.gif" alt="목록" id="BtnList"></a>
                </p>
                <%-- bbs End --%>
                </form>
            </div>
        </div>
            
    </div>
</div>

<jsp:include page="../include/footer.jsp" flush="true" />

