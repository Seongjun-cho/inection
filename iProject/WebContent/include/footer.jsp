<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>


    <%--footer--%>
    <div id="footer_wrap">
   		<div style="text-align: center; padding-top:20px;">
   			<c:choose>
				<c:when test="${empty session.user_id}">
					<a href=javascript:go_login()><img src="/images/footer/footer_bg_2.PNG" /></a>
				</c:when>
				<c:otherwise>
					<a href="javascript:go_logout();"><img src="/images/login/BTN_LOGOUT.PNG" alt="LOGOUT"/></a>
				</c:otherwise>
			</c:choose>
        </div>
	    <div>
        	<div style="text-align: center;">
    			<a href=javascript:go_individual_info()><img src="/images/footer/footer_row.PNG"/></a>
        	</div>
        </div>
	    <div>
	        <div class="footer">
	        	<div style="float: left;">
	    			<img src="/images/footer/footer_logo.PNG" />
	        	</div>
	        	<div style="float: right;">
	        		<img src="/images/footer/footer_bottom.PNG" alt="서울시 구로구 디지털로 31길 12 태평양물산 2층 90호/대표번호 : 02-335-0434/팩스 : 02-853-3880 사업자번호 : 201-81-25883/사업자명 : 김숭구/상호명 : (주) 아이넥션소프트/Copyright @ 2014 inection All Rights Reserved." />        		
	        	</div>
	        </div>
	    </div>
    </div>
    
    <%--//footer--%>

</body>

</html>
