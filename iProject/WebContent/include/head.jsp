<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="/include/taglibs.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>아이넥션소프트</title>
<link rel="stylesheet" type="text/css" href="/css/base.css" />
<link rel="stylesheet" type="text/css" href="/css/index.css?ver=2" />
<link rel="stylesheet" type="text/css" href="/css/sub.css?ver=5" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/sub_menu.js"></script>
<script type="text/javascript" src="/js/gnb.js"></script>
<script type="text/javascript" src="/js/link.js"></script>
<!-- <script type="text/javascript" src="/js/amazon_scroller.js"></script> -->
<script type="text/javascript" src="/js/jquery.bxSlider.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<!-- Start of Async Drift Code -->
<script>
/*
"use strict";

!function() {
  var t = window.driftt = window.drift = window.driftt || [];
  if (!t.init) {
    if (t.invoked) return void (window.console && console.error && console.error("Drift snippet included twice."));
    t.invoked = !0, t.methods = [ "identify", "config", "track", "reset", "debug", "show", "ping", "page", "hide", "off", "on" ], 
    t.factory = function(e) {
      return function() {
        var n = Array.prototype.slice.call(arguments);
        return n.unshift(e), t.push(n), t;
      };
    }, t.methods.forEach(function(e) {
      t[e] = t.factory(e);
    }), t.load = function(t) {
      var e = 3e5, n = Math.ceil(new Date() / e) * e, o = document.createElement("script");
      o.type = "text/javascript", o.async = !0, o.crossorigin = "anonymous", o.src = "https://js.driftt.com/include/" + n + "/" + t + ".js";
      var i = document.getElementsByTagName("script")[0];
      i.parentNode.insertBefore(o, i);
    };
  }
}();
drift.SNIPPET_VERSION = '0.3.1';
drift.load('c49f74xem3x5');
*/
</script>
<!-- End of Async Drift Code -->
</head>

<body>

<%--head--%>
<div id="header_wrap">
  <div class="global_wrap">
    <ul>
      <li><a href="javascript:go_home()"><img src="/images/common/tmenu1.gif" alt="HOME"/></a></li>
      <li><img src="/images/common/tmenu_line.gif" /></li>
      <li><a href="javascript:go_contact()"><img src="/images/common/tmenu2.gif" alt="CONTACT"/></a></li>
      <li><img src="/images/common/tmenu_line.gif" /></li>
      <li><a href="javascript:go_sitemap()"><img src="/images/common/tmenu3.gif" alt="SITEMAP"/></a></li>
    </ul>
  </div>
  <div id="gnb_wrap">
    <h1><a href="javascript:go_logo()"><img src="/images/common/logo_top.png" alt="아이넥션소프트"/></a></h1>
    <div class="topnavi">
      <ul id="topnavi">
        <li class="menu01"><a href="javascript:go_11()"  id="topnavi01"><img src="/images/common/gnb_1_off.gif" alt="회사소개" /></a>
          <div id="topsub01" class="topnavisub">
            <ul class="sub_01">
              <li class="headmenu"><a href="javascript:go_11()">기업비전</a></li>
              <li class="headmenu"><a href="javascript:go_12()">연혁</a></li>
              <li class="headmenu"><a href="javascript:go_14()">조직구조</a></li>
              <li class="headmenu"><a href="javascript:go_15()">파트너사/고객사</a></li>
              <li class="headmenu"><a href="javascript:go_16()">위치</a></li>
<!--               <li class="menu0101"><a href="javascript:go_11()"></a></li> -->
<!--               <li class="menu0102"><a href="javascript:go_12()"></a></li> -->
<!--               <li class="menu0104"><a href="javascript:go_14()"></a></li> -->
<!--               <li class="menu0105"><a href="javascript:go_15()"></a></li> -->
<!--               <li class="menu0106"><a href="javascript:go_16()"></a></li> -->
            </ul>
          </div>
        </li>
        <li class="menu02"><a href="javascript:go_21()" id="topnavi02"><img src="/images/common/gnb_2_off.gif" alt="제품소개" /></a>
          <div id="topsub02" class="topnavisub">
            <ul class="sub_02">
              <li class="headmenu"><a href="javascript:go_21()">MOZART</a></li>
              <li class="headmenu"><a href="javascript:go_22()">Fortify SCA</a></li>
              <li class="headmenu"><a href="javascript:go_23()">Fortify WebInspect</a></li>
              <li class="headmenu"><a href="javascript:go_28()">Imperva RASP</a></li>
              <li class="headmenu"><a href="javascript:go_27()">Kong(API Gateway)</a></li>
              <!-- <li class="headmenu"><a href="javascript:go_24()">Application Defender</a></li> -->
              <li class="headmenu"><a href="javascript:go_25()">Sonatype</a></li>
              <li class="headmenu"><a href="javascript:go_26()">Blancco</a></li>
              <li class="headmenu"><a href="javascript:go_29()">FOSSID</a></li>
            </ul>
          </div>
        </li>
        <li class="menu03"><a href="javascript:go_35()" id="topnavi03"><img src="/images/common/gnb_3_off.gif" alt="사업영역" /></a>
          <div id="topsub03" class="topnavisub">
            <ul class="sub_03">
              <li class="headmenu"><a href="javascript:go_35()">Application Security</a></li>
              <li class="headmenu"><a href="javascript:go_32()">Mobile CS Center</a></li>
              <li class="headmenu"><a href="javascript:go_31()">Smart BIMS</a></li>
              <li class="headmenu"><a href="javascript:go_33()">Smart Contact Center</a></li>
              <li class="headmenu"><a href="javascript:go_34()">FMS</a></li>
            </ul>
          </div>
        </li>
        <li class="menu04"><a href="javascript:go_41()" id="topnavi04"><img src="/images/common/gnb_4_off.gif" alt="채용정보" /></a>
          <div id="topsub04" class="topnavisub">
            <ul class="sub_04">
              <li class="headmenu"><a href="javascript:go_41()">채용정보</a></li>
              <li class="headmenu"><a href="javascript:go_42()">채용공고</a></li>
            </ul>
          </div>
        </li>
        <li class="menu05"><a href="javascript:go_51()" id="topnavi05"><img src="/images/common/gnb_5_off.gif" alt="고객센터" /></a>
          <div id="topsub05" class="topnavisub">
            <ul class="sub_05">
              <li class="headmenu"><a href="javascript:go_51()">공지사항</a></li>
              <li class="headmenu"><a href="javascript:go_55()">문의하기</a></li>
              <li class="headmenu"><a href="javascript:go_56()">서비스요청</a></li>
              
<!--               <li class="menu0503"><a href="javascript:go_53()"></a></li> -->
            </ul>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<%--//head--%>
</body>