<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ include file="/include/taglibs.jsp"%>
<jsp:include page="/include/head.jsp" flush="true" />
<body class='device-windows' >


<pages-css id="pages-css">
	<style id="css_masterPage">
	:root{--color_0:255,255,255;--color_1:255,255,255;--color_2:0,0,0;--color_3:25,25,25;--color_4:247,247,247;--color_5:253,219,77;--color_6:255,255,255;--color_7:191,191,191;--color_8:128,128,128;--color_9:64,64,64;--color_10:0,0,0;--color_11:255,255,255;--color_12:212,212,212;--color_13:144,144,144;--color_14:96,96,96;--color_15:0,0,0;--color_16:160,194,232;--color_17:112,157,209;--color_18:13,94,186;--color_19:9,63,124;--color_20:4,31,62;--color_21:246,204,176;--color_22:238,177,136;--color_23:229,112,34;--color_24:153,75,23;--color_25:76,37,11;--color_26:241,238,167;--color_27:228,222,123;--color_28:214,204,17;--color_29:143,136,11;--color_30:71,68,6;--color_31:178,224,187;--color_32:134,192,145;--color_33:63,161,82;--color_34:42,107,55;--color_35:21,54,27;--font_0:normal normal normal 22px/1.41em helvetica-w01-roman,helvetica-w02-roman,helvetica-lt-w10-roman,sans-serif;--font_1:normal normal normal 14px/1.79em avenir-lt-w01_35-light1475496,sans-serif;--font_2:normal normal normal 28px/1.375em helvetica-w01-roman,helvetica-w02-roman,helvetica-lt-w10-roman,sans-serif;--font_3:normal normal normal 88px/1.2em helvetica-w01-roman,helvetica-w02-roman,helvetica-lt-w10-roman,sans-serif;--font_4:normal normal normal 72px/1.25em helvetica-w01-roman,helvetica-w02-roman,helvetica-lt-w10-roman,sans-serif;--font_5:normal normal normal 50px/1.34em helvetica-w01-roman,helvetica-w02-roman,helvetica-lt-w10-roman,sans-serif;--font_6:normal normal normal 40px/1.35em helvetica-w01-roman,helvetica-w02-roman,helvetica-lt-w10-roman,sans-serif;--font_7:normal normal normal 20px/1.67em avenir-lt-w01_35-light1475496,sans-serif;--font_8:normal normal normal 18px/1.75em avenir-lt-w01_35-light1475496,sans-serif;--font_9:normal normal normal 15px/1.875em avenir-lt-w01_35-light1475496,sans-serif;--font_10:normal normal normal 14px/1.79em avenir-lt-w01_35-light1475496,sans-serif;--wix-ads-height:0px;--wix-ads-top-height:0px;--site-width:980px;--above-all-z-index:100000;--minViewportSize:320;--maxViewportSize:1920}.font_0{font:var(--font_0);color:rgb(var(--color_15))}.font_1{font:var(--font_1);color:rgb(var(--color_15))}.font_2{font:var(--font_2);color:rgb(var(--color_15))}.font_3{font:var(--font_3);color:rgb(var(--color_15))}.font_4{font:var(--font_4);color:rgb(var(--color_15))}.font_5{font:var(--font_5);color:rgb(var(--color_15))}.font_6{font:var(--font_6);color:rgb(var(--color_15))}.font_7{font:var(--font_7);color:rgb(var(--color_15))}.font_8{font:var(--font_8);color:rgb(var(--color_15))}.font_9{font:var(--font_9);color:rgb(var(--color_15))}.font_10{font:var(--font_10);color:rgb(var(--color_15))}.color_0{color:rgb(var(--color_0))}.color_1{color:rgb(var(--color_1))}.color_2{color:rgb(var(--color_2))}.color_3{color:rgb(var(--color_3))}.color_4{color:rgb(var(--color_4))}.color_5{color:rgb(var(--color_5))}.color_6{color:rgb(var(--color_6))}.color_7{color:rgb(var(--color_7))}.color_8{color:rgb(var(--color_8))}.color_9{color:rgb(var(--color_9))}.color_10{color:rgb(var(--color_10))}.color_11{color:rgb(var(--color_11))}.color_12{color:rgb(var(--color_12))}.color_13{color:rgb(var(--color_13))}.color_14{color:rgb(var(--color_14))}.color_15{color:rgb(var(--color_15))}.color_16{color:rgb(var(--color_16))}.color_17{color:rgb(var(--color_17))}.color_18{color:rgb(var(--color_18))}.color_19{color:rgb(var(--color_19))}.color_20{color:rgb(var(--color_20))}.color_21{color:rgb(var(--color_21))}.color_22{color:rgb(var(--color_22))}.color_23{color:rgb(var(--color_23))}.color_24{color:rgb(var(--color_24))}.color_25{color:rgb(var(--color_25))}.color_26{color:rgb(var(--color_26))}.color_27{color:rgb(var(--color_27))}.color_28{color:rgb(var(--color_28))}.color_29{color:rgb(var(--color_29))}.color_30{color:rgb(var(--color_30))}.color_31{color:rgb(var(--color_31))}.color_32{color:rgb(var(--color_32))}.color_33{color:rgb(var(--color_33))}.color_34{color:rgb(var(--color_34))}.color_35{color:rgb(var(--color_35))}.backcolor_0{background-color:rgb(var(--color_0))}.backcolor_1{background-color:rgb(var(--color_1))}.backcolor_2{background-color:rgb(var(--color_2))}.backcolor_3{background-color:rgb(var(--color_3))}.backcolor_4{background-color:rgb(var(--color_4))}.backcolor_5{background-color:rgb(var(--color_5))}.backcolor_6{background-color:rgb(var(--color_6))}.backcolor_7{background-color:rgb(var(--color_7))}.backcolor_8{background-color:rgb(var(--color_8))}.backcolor_9{background-color:rgb(var(--color_9))}.backcolor_10{background-color:rgb(var(--color_10))}.backcolor_11{background-color:rgb(var(--color_11))}.backcolor_12{background-color:rgb(var(--color_12))}.backcolor_13{background-color:rgb(var(--color_13))}.backcolor_14{background-color:rgb(var(--color_14))}.backcolor_15{background-color:rgb(var(--color_15))}.backcolor_16{background-color:rgb(var(--color_16))}.backcolor_17{background-color:rgb(var(--color_17))}.backcolor_18{background-color:rgb(var(--color_18))}.backcolor_19{background-color:rgb(var(--color_19))}.backcolor_20{background-color:rgb(var(--color_20))}.backcolor_21{background-color:rgb(var(--color_21))}.backcolor_22{background-color:rgb(var(--color_22))}.backcolor_23{background-color:rgb(var(--color_23))}.backcolor_24{background-color:rgb(var(--color_24))}.backcolor_25{background-color:rgb(var(--color_25))}.backcolor_26{background-color:rgb(var(--color_26))}.backcolor_27{background-color:rgb(var(--color_27))}.backcolor_28{background-color:rgb(var(--color_28))}.backcolor_29{background-color:rgb(var(--color_29))}.backcolor_30{background-color:rgb(var(--color_30))}.backcolor_31{background-color:rgb(var(--color_31))}.backcolor_32{background-color:rgb(var(--color_32))}.backcolor_33{background-color:rgb(var(--color_33))}.backcolor_34{background-color:rgb(var(--color_34))}.backcolor_35{background-color:rgb(var(--color_35))}#SITE_CONTAINER.focus-ring-active :not(.has-custom-focus):not(.ignore-focus):focus, #SITE_CONTAINER.focus-ring-active :not(.has-custom-focus):not(.ignore-focus):focus ~ .wixSdkShowFocusOnSibling{box-shadow:0 0 0 1px #ffffff, 0 0 0 3px #116dff !important;z-index:999}[data-mesh-id=SITE_FOOTERinlineContent]{height:auto;width:100%}[data-mesh-id=SITE_FOOTERinlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:auto;grid-template-rows:min-content min-content min-content min-content 1fr;grid-template-columns:100%}[data-mesh-id=SITE_FOOTERinlineContent-gridContainer] > [id="comp-khcyt9nl"]{position:relative;margin:118px 0px 6px calc((100% - 980px) * 0.5);left:434px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[data-mesh-id=SITE_FOOTERinlineContent-gridContainer] > [id="comp-k8nufzci"]{position:relative;margin:0px 0px 9px calc((100% - 980px) * 0.5);left:238px;grid-area:2 / 1 / 3 / 2;justify-self:start;align-self:start}[data-mesh-id=SITE_FOOTERinlineContent-gridContainer] > [id="comp-k8nuieni"]{position:relative;margin:0px 0px 9px calc((100% - 980px) * 0.5);left:72px;grid-area:3 / 1 / 4 / 2;justify-self:start;align-self:start}[data-mesh-id=SITE_FOOTERinlineContent-gridContainer] > [id="comp-k8h28sca1"]{position:relative;margin:0px 0px 7px calc((100% - 980px) * 0.5);left:320px;grid-area:4 / 1 / 5 / 2;justify-self:start;align-self:start}[data-mesh-id=SITE_FOOTERinlineContent-gridContainer] > [id="comp-k8h28sca4"]{position:relative;margin:0px 0px 1px calc((100% - 980px) * 0.5);left:297px;grid-area:5 / 1 / 6 / 2;justify-self:start;align-self:start}[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent]{height:auto;width:291px}[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:auto;grid-template-rows:min-content 1fr;grid-template-columns:100%}[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer] > [id="comp-k8ploy5m"]{position:relative;margin:60px 0px 30px 0;left:20px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[data-mesh-id=SOSP_CONTAINER_CUSTOM_IDinlineContent-gridContainer] > [id="comp-k8ploxsq"]{position:relative;margin:0px 0px 30px 0;left:20px;grid-area:2 / 1 / 3 / 2;justify-self:start;align-self:start}[data-mesh-id=SITE_HEADERinlineContent]{height:auto;width:100%}[data-mesh-id=SITE_HEADERinlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:auto;grid-template-rows:1fr;grid-template-columns:100%}[data-mesh-id=SITE_HEADERinlineContent-gridContainer] > [id="comp-khd3mkp6"]{position:relative;margin:25px 0px 13px calc((100% - 980px) * 0.5);left:-305px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[data-mesh-id=SITE_HEADERinlineContent-gridContainer] > [id="comp-k8h2iz2n"]{position:relative;margin:12px 0px 0px calc((100% - 980px) * 0.5);left:2px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[id="soapAfterPagesContainer"].page-without-sosp [data-mesh-id=soapAfterPagesContainerinlineContent]{height:auto;width:100%;position:static;min-height:auto;padding-bottom:0px;box-sizing:border-box}[id="soapAfterPagesContainer"].page-without-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer] > [id="CONTROLLER_COMP_CUSTOM_ID"]{position:absolute;top:-58px;left:20px}[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent]{height:auto;width:100%}[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:auto;grid-template-rows:1fr;grid-template-columns:100%;padding-bottom:0px;box-sizing:border-box}[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer] > [id="CONTROLLER_COMP_CUSTOM_ID"]{position:absolute;top:-58px;left:20px}[id="soapAfterPagesContainer"].page-with-sosp [data-mesh-id=soapAfterPagesContainerinlineContent-gridContainer] > [id="SOSP_CONTAINER_CUSTOM_ID"]{position:relative;margin:239px 0px 0 calc((100% - 980px) * 0.5);left:0px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}#masterPage{left:0;margin-left:0;width:100%;min-width:980px}#SITE_FOOTER{left:0;margin-left:0;width:100%;min-width:980px;--pinned-layer-in-container:50;--above-all-in-container:49}#PAGES_CONTAINER{left:0;margin-left:0;width:100%;min-width:980px;--pinned-layer-in-container:51;--above-all-in-container:49}#SOSP_CONTAINER_CUSTOM_ID{width:291px;--pinned-layer-in-container:53;--above-all-in-container:49}#SITE_HEADER{left:0;margin-left:0;width:100%;min-width:980px;z-index:54;--above-all-in-container:10000}#comp-khcyt9nl{width:108px;height:17px}#comp-k8nufzci{width:504px;height:17px}#comp-k8nuieni{width:835px;height:17px}#comp-k8h28sca1{width:339px;height:17px}#comp-k8h28sca4{width:383px;height:23px}#SITE_PAGES{left:0;margin-left:0;width:100%;min-width:980px}#comp-k8ploy5m{width:250px;height:306px}#comp-k8ploxsq{width:250px;height:402px}#comp-khd3mkp6{width:305px;height:35px}#comp-k8h2iz2n{width:916px;height:61px}#SITE_HEADER-placeholder{height:73px}#masterPage.landingPage #SITE_FOOTER{display:none}#masterPage.landingPage #CONTROLLER_COMP_CUSTOM_ID{display:none}#masterPage.landingPage #SOSP_CONTAINER_CUSTOM_ID{display:none}#masterPage.landingPage #SITE_HEADER{display:none}#masterPage.landingPage #SITE_HEADER-placeholder{display:none}#masterPage.landingPage #SITE_FOOTER-placeholder{display:none}#masterPage:not(.landingPage) #PAGES_CONTAINER{margin-top:0px;margin-bottom:0px}#CONTROLLER_COMP_CUSTOM_ID{--pinned-layer-in-container:52;--above-all-in-container:49}
	@font-face {
    font-display: block;
    font-family: "Helvetica-W01-Roman";
    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/ea95b44a-eab7-4bd1-861c-e73535e7f652.eot?#iefix");
    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/ea95b44a-eab7-4bd1-861c-e73535e7f652.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/4021a3b9-f782-438b-aeb4-c008109a8b64.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/669f79ed-002c-4ff6-965c-9da453968504.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/d17bc040-9e8b-4397-8356-8153f4a64edf.svg#d17bc040-9e8b-4397-8356-8153f4a64edf") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family: "Helvetica-W02-Roman";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/e4bd4516-4480-43df-aa6e-4e9b9029f53e.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/e4bd4516-4480-43df-aa6e-4e9b9029f53e.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/b56b944e-bbe0-4450-a241-de2125d3e682.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/7da02f05-ae8b-43a1-aeb9-83b3c0527c06.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/66cac56e-d017-4544-9d0c-f7d978f0c5c2.svg#66cac56e-d017-4544-9d0c-f7d978f0c5c2") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family: "Helvetica-LT-W10-Roman";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/686a6a06-e711-4bd2-b393-8504a497bb3c.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/686a6a06-e711-4bd2-b393-8504a497bb3c.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/6f8d1983-4d34-4fa4-9110-988f6c495757.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/7903ee3f-e9ab-4bdc-b7d2-d232de2da580.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/9c58e9ea-fdea-4b9c-b0f9-0a2157389ed0.svg#9c58e9ea-fdea-4b9c-b0f9-0a2157389ed0") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family:"Avenir-LT-W01_35-Light1475496";
	    src:url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/edefe737-dc78-4aa3-ad03-3c6f908330ed.eot?#iefix");
	    src:url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/edefe737-dc78-4aa3-ad03-3c6f908330ed.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/0078f486-8e52-42c0-ad81-3c8d3d43f48e.woff2") format("woff2"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/908c4810-64db-4b46-bb8e-823eb41f68c0.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/4577388c-510f-4366-addb-8b663bcc762a.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/b0268c31-e450-4159-bfea-e0d20e2b5c0c.svg#b0268c31-e450-4159-bfea-e0d20e2b5c0c") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family: "FBBlueGothicL";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/902109a4-ea36-40b3-a234-05747684a610.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/902109a4-ea36-40b3-a234-05747684a610.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/1a10c1c0-157a-4f57-96c1-1af2fc242e06.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/31b02a27-3c41-4593-bfbf-84702627c9fd.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/e4aaa0ee-fcdd-4558-9d8e-be75c6b8c417.svg#e4aaa0ee-fcdd-4558-9d8e-be75c6b8c417") format("svg");
	}
		
	#SITE_FOOTER { --bg:var(--color_16);--shd:0.00px 0.00px 5px 0px rgba(0, 0, 0, 0.7);--brwt:0px;--brd:47,46,46;--brwb:0px;--bgctr:255,255,255;--rd:0px;--alpha-bg:0.3;--alpha-brd:1;--alpha-bgctr:0;--shc-mutated-brightness:80,97,116 }#CONTROLLER_COMP_CUSTOM_ID { --bgh:43,104,156;--alpha-bgh:1;--boxShadowToggleOn -shd:none;--bg:61,155,233;--brw:0px;--alpha - brdh:1;--fnt:normal normal normal 14px/1.4em raleway;--alpha - txth:1;--shd:0 1px 4px rgba(0, 0, 0, 0.6);;--txt:255,255,255;--alpha-txt:1;--rd:20px;--brdh:61,155,233;--alpha-brdh:1;--brd:43,104,156;--alpha-brd:1;--alpha-bg:1;--alpha -bgh:1;--txth:255,255,255;--alpha-txth:1;--alpha - txt:1;--alpha - brd:1 }#SOSP_CONTAINER_CUSTOM_ID { --brw:0px;--brd:var(--color_15);--bg:var(--color_11);--rd:0px;--shd:none;--alpha-bg:1;--alpha-brd:1;--boxShadowToggleOn-shd:none;--shc-mutated-brightness:128,128,128 }#SITE_HEADER { --bg:var(--color_15);--shd:0 0 5px rgba(0, 0, 0, 0.7);--shadow:inset 0 4px 6px -4px rgba(255, 255, 255, 0.59), inset 0 1px 0 0 rgba(255, 255, 255, 0.59), inset 0 -5px 5px -5px rgba(255, 255, 255, 0.9);--alpha-bg:0;--shc-mutated-brightness:0,0,0;position:fixed !important;margin-top:var(--wix-ads-top-height);top:0 }#comp-khcyt9nl { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);min-height:17px;height:auto }#comp-k8nufzci { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);min-height:17px;height:auto }#comp-k8nuieni { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);height:auto }#comp-k8h28sca1 { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);height:auto }#comp-k8h28sca4 { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);height:auto }#SITE_PAGES { --transition-duration:0ms }#comp-k8ploxsq { --brw:1px;--brd:var(--color_15);--shd:none;--rd:0px;--sepw:0px;--sep:var(--color_15);--itemBGColorTrans:background-color 0.4s ease 0s;--bgh:var(--color_11);--txth:var(--color_14);--alpha-txth:1;--bgs:var(--color_11);--txts:var(--color_18);--alpha-txts:1;--textSpacing:30px;--bg:var(--color_11);--fnt:var(--font_8);--txt:var(--color_15);--alpha-txt:1;--subMenuOpacityTrans:all 0.4s ease 0s;--SKINS_submenuBR:0px;--SKINS_bgSubmenu:255,255,255;--SKINS_fntSubmenu:var(--font_8);--SKINS_submenuMargin:0px;--subItemAlterAlignPad:30px;--separatorHeight:0px;--dropdownMarginReal:0px;--boxShadowToggleOn-shd:none;--alpha-SKINS_bgSubmenu:1;--alpha-brd:0.2;--alpha-sep:1;--alpha-bg:1;--alpha-bgh:1;--alpha-bgs:1;--item-height:40px;--item-align:left;--text-align:flex-start;--sub-menu-open-direction-right:auto;--sub-menu-open-direction-left:0;--separator-height-adjusted:0px }#comp-khd3mkp6 { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);height:auto }#comp-k8h2iz2n { --menuTotalBordersX:0px;--menuTotalBordersY:2px;--bgDrop:var(--color_11);--rd:10px 10px 10px 10px;--shd:0.00px 1.00px 4px 0px rgba(0, 0, 0, 0.6);--fnt:normal normal 700 16px/1.4em avenir-lt-w01_35-light1475496,sans-serif;--pad:5px;--txt:0,0,0;--alpha-txt:1;--trans:color 0.4s ease 0s;--txth:var(--color_14);--alpha-txth:1;--txts:var(--color_14);--alpha-txts:1;--alpha-bgDrop:1 }#BACKGROUND_GROUP { --transition-duration:0ms }
	
	
	/* stylable css */
	/* */
	</style>
	<style id="css_fqlnf">
		[data-mesh-id=comp-khcxjftainlineContent]{height:auto;width:100%}[data-mesh-id=comp-khcxjftainlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:auto;grid-template-rows:1fr;grid-template-columns:100%; margin-top:50px;}[data-mesh-id=comp-khcxjftainlineContent-gridContainer] > [id="comp-khcxjftj"]{position:relative;margin:60px 0px 61px calc((100% - 980px) * 0.5);left:366px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[data-mesh-id=comp-khcxjful2inlineContent]{height:auto;width:100%}[data-mesh-id=comp-khcxjful2inlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:auto;grid-template-rows:min-content 1fr;grid-template-columns:100%}[data-mesh-id=comp-khcxjful2inlineContent-gridContainer] > [id="comp-khcxjfuo1"]{position:relative;margin:49px 0px 13px calc((100% - 980px) * 0.5);left:387px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[data-mesh-id=comp-khcxjful2inlineContent-gridContainer] > [id="comp-khcxjfuq"]{position:relative;margin:0px 0px 50px calc((100% - 980px) * 0.5);left:348px;grid-area:2 / 1 / 3 / 2;justify-self:start;align-self:start}[data-mesh-id=ContainerfqlnfinlineContent]{height:auto;width:100%}[data-mesh-id=ContainerfqlnfinlineContent-gridContainer]{position:static;display:grid;height:auto;width:100%;min-height:500px;grid-template-rows:min-content min-content 1fr;grid-template-columns:100%;padding-bottom:0px;box-sizing:border-box}[data-mesh-id=ContainerfqlnfinlineContent-gridContainer] > [id="comp-khcxjfpu"]{position:relative;margin:0px 0px 0 calc((100% - 980px) * 0.5);left:0px;grid-area:1 / 1 / 2 / 2;justify-self:start;align-self:start}[data-mesh-id=ContainerfqlnfinlineContent-gridContainer] > [id="comp-khcxjfq6"]{position:relative;margin:0px 0px 0 calc((100% - 980px) * 0.5);left:0px;grid-area:2 / 1 / 3 / 2;justify-self:start;align-self:start}[data-mesh-id=ContainerfqlnfinlineContent-gridContainer] > [id="comp-khcxl7i6"]{position:relative;margin:0px 0px 0 calc((100% - 980px) * 0.5);left:-101px;grid-area:3 / 1 / 4 / 2;justify-self:start;align-self:start}#fqlnf{left:0;margin-left:0;width:100%;min-width:980px}#comp-khcxjfpu{left:0;margin-left:0;width:100%;min-width:980px}#comp-khcxjfq6{left:0;margin-left:0;width:100%;min-width:980px}#comp-khcxl7i6{width:1180px;height:2037px}#comp-khcxjfta{width:980px}#comp-khcxjful2{width:980px}#comp-khcxjftj{width:250px;height:40px}#comp-khcxjfuo1{width:208px;height:33px}#comp-khcxjfuq{width:285px;height:5px}
		@font-face {
	    font-display: block;
	    font-family: "FBBlueGothicL";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/902109a4-ea36-40b3-a234-05747684a610.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/902109a4-ea36-40b3-a234-05747684a610.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/1a10c1c0-157a-4f57-96c1-1af2fc242e06.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/31b02a27-3c41-4593-bfbf-84702627c9fd.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/e4aaa0ee-fcdd-4558-9d8e-be75c6b8c417.svg#e4aaa0ee-fcdd-4558-9d8e-be75c6b8c417") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family: "Helvetica-W01-Bold";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/f70da45a-a05c-490c-ad62-7db4894b012a.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/f70da45a-a05c-490c-ad62-7db4894b012a.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/c5749443-93da-4592-b794-42f28d62ef72.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/73805f15-38e4-4fb7-8a08-d56bf29b483b.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/874bbc4a-0091-49f0-93ef-ea4e69c3cc7a.svg#874bbc4a-0091-49f0-93ef-ea4e69c3cc7a") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family: "Helvetica-W02-Bold";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/8c0d8b0f-d7d6-4a72-a418-c2373e4cbf27.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/8c0d8b0f-d7d6-4a72-a418-c2373e4cbf27.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/192dac76-a6d9-413d-bb74-22308f2e0cc5.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/47584448-98c4-436c-89b9-8d6fbeb2a776.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/375c70e5-6822-492b-8408-7cd350440af7.svg#375c70e5-6822-492b-8408-7cd350440af7") format("svg");
	}
	@font-face {
	    font-display: block;
	    font-family: "Helvetica-LT-W10-Bold";
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/9fe262dc-5a55-4d75-91a4-aed76bd32190.eot?#iefix");
	    src: url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/9fe262dc-5a55-4d75-91a4-aed76bd32190.eot?#iefix") format("eot"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/0a3939d0-3833-4db3-8b85-f64c2b3350d2.woff") format("woff"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/1b128d6d-126f-4c9c-8f87-3e7d30a1671c.ttf") format("truetype"),url("//static.parastorage.com/services/third-party/fonts/user-site-fonts/fonts/b791c850-fde1-48b3-adf0-8998d55b0866.svg#b791c850-fde1-48b3-adf0-8998d55b0866") format("svg");
	}
		
	#fqlnf { min-height:500px;width:auto }#comp-khcxjfpu { --bg-overlay-color:transparent;--padding:0px;--margin:0px;min-width:980px; height:150px; }#comp-khcxjfq6 { --bg-overlay-color:transparent;--padding:0px;--margin:0px;min-width:980px }#comp-khcxl7i6 { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);min-height:2037px;height:auto }#comp-khcxjfta { --bg-overlay-color:rgb(250, 250, 250);--fill-layer-image-opacity:1;width:100%;--column-width:980px;--column-flex:980 }#comp-khcxjful2 { --bg-overlay-color:rgb(250, 250, 250);width:100%;--column-width:980px;--column-flex:980 }#comp-khcxjftj { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);min-height:40px;height:auto }#comp-khcxjfuo1 { --f0:var(--font_0);--f1:var(--font_1);--f10:var(--font_10);--f2:var(--font_2);--f3:var(--font_3);--f4:var(--font_4);--f5:var(--font_5);--f6:var(--font_6);--f7:var(--font_7);--f8:var(--font_8);--f9:var(--font_9);min-height:14px;height:auto }#comp-khcxjfuq { --lnw:3px;--brd:var(--color_15);--alpha-brd:1;transform-origin:center 1.5px }#pageBackground_fqlnf { --bg-position:absolute;--bg-overlay-color:rgb(var(--color_11));--fill-layer-background-overlay-color:transparent;--fill-layer-background-overlay-position:absolute }
	
	
	/* stylable css */
	
	</style>
</pages-css>
<div id="SITE_CONTAINER">
<div id="main_MF"><div id="SCROLL_TO_TOP" class="_3nfU6 ignore-focus" tabindex="-1" role="region" aria-label="top of page">
<div id="BACKGROUND_GROUP"><div id="pageBackground_fqlnf" data-media-position-override="false" class="_3L3Me">
<div id="bgLayers_pageBackground_fqlnf" class="_3_wbk"><div data-testid="colorUnderlay" class="P0kib FgquG">
<div id="bgMedia_pageBackground_fqlnf" class="_33YMf"></div><div data-testid="bgOverlay" class="_2eyb9"></div></div></div></div></div></div>

<header id="SITE_HEADER" class="_3kHRK">
	<div class="_2b2sw"><div class="_1tCXl"></div></div><div class="_3eRzG"><div class="_3Tm73"></div></div>
</header>

<div id="SITE_HEADER-placeholder"></div>
<div id="fqlnf" class="_2e6ps">
<div class="_2HjkL">
</div><div class="_2S9ms">
<div id="Containerfqlnf" class="_3Mgpu"><div data-mesh-id="ContainerfqlnfinlineContent" data-testid="inline-content" class="">
<div data-mesh-id="ContainerfqlnfinlineContent-gridContainer" data-testid="mesh-container-content">

<section id="comp-khcxjfpu">
	<div id="bgLayers_comp-khcxjfpu" class="_3_wbk"><div data-testid="colorUnderlay" class="P0kib FgquG"></div><div id="bgMedia_comp-khcxjfpu" class="_33YMf">
	</div></div><div data-testid="columns" class="_3BQmz"><div id="comp-khcxjfta" class="_1HpZ_"><div id="bgLayers_comp-khcxjfta" class="_3_wbk">
	<div data-testid="colorUnderlay" class="P0kib FgquG"></div><div id="bgMedia_comp-khcxjfta" class="_33YMf"></div></div>
	<div data-mesh-id="comp-khcxjftainlineContent" data-testid="inline-content" class=""><div data-mesh-id="comp-khcxjftainlineContent-gridContainer" data-testid="mesh-container-content">
	<div id="comp-khcxjftj" class="_1Z_nJ" data-testid="richTextElement"><h6 class="font_6" style="font-size:30px"><span style="letter-spacing:0em"><span style="font-weight:bold">
	<span style="font-size:30px">개인정보 처리방침</span></span></span></h6></div></div></div></div></div>
</section>

<section id="comp-khcxjfq6">
	<div id="bgLayers_comp-khcxjfq6" class="_3_wbk">
	<div data-testid="colorUnderlay" class="P0kib FgquG"></div><div id="bgMedia_comp-khcxjfq6" class="_33YMf"></div></div><div data-testid="columns" class="_3BQmz">
	<div id="comp-khcxjful2" class="_1HpZ_"><div id="bgLayers_comp-khcxjful2" class="_3_wbk"><div data-testid="colorUnderlay" class="P0kib FgquG"></div>
	<div id="bgMedia_comp-khcxjful2" class="_33YMf"></div></div><div data-mesh-id="comp-khcxjful2inlineContent" data-testid="inline-content" class="">
	<div data-mesh-id="comp-khcxjful2inlineContent-gridContainer" data-testid="mesh-container-content">
	<div id="comp-khcxjfuq" class="_1e6g2"></div></div></div></div></div>
</section>

<div id="comp-khcxl7i6" class="_1Z_nJ" data-testid="richTextElement">

<p class="font_8" style="font-size:15px"><span style="font-size:15px">​&lsquo;(주)아이넥션소프트&rsquo;는&nbsp;고객님의 개인정보를 중요시하며, &ldquo;정보통신망 이용촉진 및 정보보호&rdquo;에 관한 법률을 준수하고 있습니다.<br />
(주)아이넥션소프트는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. (주)아이넥션소프트는&nbsp;개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">본 방침은&nbsp;2020년 11월 30일부터 시행됩니다.</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">수집하는 개인정보 항목</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 계약,상담 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</span></p>

<ul class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">수집항목 : 성명, 생년월일, 연락처, 이메일 , 주소</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">개인정보 수집방법 : 홈페이지, 서면, 온/오프라인 이벤트, 전화, 우편, 이메일 등(상담 메뉴를 통한 수집)</span></p>
	</li>
</ul>

<p class="font_8" style="font-size:15px"><span class="wixGuard">​</span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보의 수집 및 이용목적</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</span></p>

<ul class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">서비스 제공에 관한 계약, 상담 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공</span></p>
	</li>
</ul>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보의 보유 및 이용기간</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 개인정보 수집 및 이용목적이 달성된 후 6개월 보관 후 폐기</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(단, 계약 또는 청약철회 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 관련 법령에 따라 보관)</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">광고/정보 수신 및 마케팅 활용에 대한 안내</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<ol class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">수집∙이용 목적: 새로운 정보의 업데이트나 이벤트 소식, 서비스 안내와 같은 정보, 상담&middot;계약 처리과정을 문자, 이메일 등의 방법으로 제공하기 위해 사용합니다.</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">수집 항목: 이메일, 연락처(휴대폰)</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">보유 &middot; 이용기간 : 수집일로부터 1년</span></p>
	</li>
</ol>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보의 파기절차 및 방법</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.</span></p>

<ul class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">파기절차 : 이용자가 계약 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라 (보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">파기방법 : 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</span></p>
	</li>
</ul>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보 제공</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</span></p>

<ul class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">이용자들이 사전에 동의한 경우 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</span></p>
	</li>
</ul>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">수집한 개인정보의 위탁</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 고객님의 동의 없이 고객님의 정보를 외부 업체에 위탁하지 않습니다.<br />
향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.</span></p>

<p class="font_8" style="font-size:15px">&nbsp;</p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인 정보를 저장, 사용, 공유 및 공개하는 방법</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">당사는 cafe24 플랫폼에서 호스팅됩니다. 귀하의 데이터는 cafe24의 데이터 스토리지, 데이어베이스 및 일반 cafe24앱을 통해 저장될 수 있습니다.&nbsp;<br />
cafe24은 방화벽으로 보호된 보안 서버에 데이터를 저장합니다.&nbsp;</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 귀하의 정보를 수시로 저장하고 찾아내는 &lsquo;쿠키(cookie)&rsquo;등을 운용합니다.<br />
쿠키란 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다.<br />
(주)아이넥션소프트는 다음과 같은 목적을 위해 쿠키를 사용합니다.</span></p>

<ul class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">쿠키 등 사용 목적 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공,</span>&nbsp;<span style="font-size:15px">귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">쿠키 설정 거부 방법 예: 쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나,&nbsp;</span><span style="font-size:15px">모든 쿠키의 저장을 거부할 수 있습니다.</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">설정방법 예 : (인터넷 익스플로어의 경우): 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.</span></p>
	</li>
</ul>

<p class="font_8" style="font-size:15px">&nbsp;</p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">이용자 및 법정대리인의 권리&middot;의무 및 행사방법</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">① 이용자는 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.</span></p>

<ul class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">개인정보 열람요구</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">오류 등이 있을 경우 정정 요구</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">삭제요구</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">처리정지 요구</span></p>
	</li>
</ul>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">② 제1항에 따른 권리 행사는 회사에 대해 서면, 전화, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 회사는 이에 대해 지체없이 조치하겠습니다.<br />
③ 이용자가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br />
④ 만 14세 미만 아동의 경우, 제1항에 따른 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우, 법정대리인은 이용자의 모든 권리를 가집니다.<br />
⑤ 이용자는 정보통신망법, 개인정보보호법 등 관계법령을 위반하여 회사가 처리하고 있는 이용자 본인이나 타인의 개인정보 및 사생활을 침해하여서는 아니됩니다.</span></p>

<p class="font_8" style="font-size:15px">&nbsp;</p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보 동의를 철회하는 방법</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">더 이상 데이터를 처리하지 않기를 원한다면, <object height="0"><a data-auto-recognition="true" href="seongjun.cho@inection.co.kr">seongjun.cho@inection.co.kr</a></object>으로 문의하거나 우편을 발송하세요: 서울시 구로구 디지털로 31길 12 태평양물산 2층 90호 </span></p>

<p class="font_8" style="font-size:15px">&nbsp;</p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보 보호정책 업데이트</span></span></p>

<p class="font_8" style="font-size:15px">&nbsp;</p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">당사는 언제든지 개인정보 보호정책을 수정할 수 있는 권리를 보유하고 있으므로, 주기적으로 검토할 것을 권장합니다. 변경 사항 및 추가 설명은 사이트에 게시될 때 즉시 효력을 발생합니다. 정책에 중대한 변경 사항이 있을 경우, 당사는 수집한 정보, 정보 사용 방법, 사용하는 경우에는 어떤 상황에서 사용 및 공개하는지를 알려드립니다.</span></p>

<p class="font_8" style="font-size:15px"><span class="wixGuard">​</span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px">개인정보에 관한 민원서비스</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-weight:bold"><span style="font-size:15px"><span class="wixGuard">​</span></span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다.</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">책임자 : 영업팀장 김기범 부장<br />
전화번호 : 010-6279-9552<br />
귀하께서는 (주)아이넥션소프트의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다.</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">(주)아이넥션소프트는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px"><span class="wixGuard">​</span></span></p>

<p class="font_8" style="font-size:15px"><span style="font-size:15px">기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</span></p>

<ol class="font_8" style="font-size: 15px;">
	<li>
	<p class="font_8" style="font-size:15px">개인분쟁조정위원회 :&nbsp;<object height="0"><a data-auto-recognition="true" href="http://www.kopico.go.kr" target="_blank">www.kopico.go.kr</a></object>&nbsp;/ 1833-6972</p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">개인정보 침해신고센터(한국인터넷진흥원 운영) :&nbsp;privacy.kisa.or.kr&nbsp;/ (국번없이)118</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">대검찰청 인터넷범죄수사센터 :&nbsp;<object height="0"><a data-auto-recognition="true" href="http://www.spo.go.k" target="_blank">www.spo.go.k</a></object>&nbsp;/ 02-3480-3573</span></p>
	</li>
	<li>
	<p class="font_8" style="font-size:15px"><span style="font-size:15px">경찰청 사이버안전국 :&nbsp;<object height="0"><a data-auto-recognition="true" href="http://cyberbureau.police.go.kr/index.do&nbsp;/" target="_blank">http://cyberbureau.police.go.kr/index.do&nbsp;/</a></object> (국번없이)182</span></p>
	</li>
</ol></div></div></div></div></div></div></div></div>

<script>
    window.firstPageId = 'fqlnf'
    window.bi.sendBeat(12, 'Partially visible', {pageId: window.firstPageId})
    window.fedops.phaseMark('partially_visible')
</script>


</body>


<jsp:include page="/include/footer.jsp" flush="true" />


