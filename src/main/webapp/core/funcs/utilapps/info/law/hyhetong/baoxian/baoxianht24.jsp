<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/core/inc/header.jsp" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  HTML  4.01  Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>法律法规查询</TITLE>
<meta  http-equiv="Content-Type"  content="text/html;  charset=UTF-8">
<link  rel="stylesheet"  href  ="<%=cssPath%>/style.css">
<style type="text/css">
<!--a            { text-decoration: none; font-size: 9pt; color: black; font-family: 宋体 }

.text        { font-size: 9pt; font-family: 宋体 }

.text1       { color: #0000A0; font-size: 11pt; font-family: 宋体 }

.text2       { color: #008080; font-size: 9pt; font-family: 宋体 }

.text3       { color: #0F8A91; font-size: 11pt; font-family: 宋体 }

.l100        { line-height: 14pt; font-size: 9pt }

td           { font-family: 宋体; font-size: 9pt; line-height: 13pt }

input        { font-size: 9pt; font-family: 宋体 }

p            { font-size: 9pt; font-family: 宋体 }

--></style>



</HEAD>

<BODY class="bodycolor" topmargin="0">

<BR>

<table width="500" border="0" cellspacing="1" cellpadding="3" align="center" class="TableBlock">

  <tr> 

    <td height="27" class="TableHeader">

      <div align="center">团体人寿保险合同</font></div>

    </td>

  </tr>

  <tr>

    <td height="54" valign="top" class="TableData">

      <p align="center"></p>

      <p align="center"></p>

      <p align="center"> </p>

      <p> 　　<BR> 

　　１．团体人寿保险投保单<BR> 

　　序号：＿＿＿＿＿<BR> 

　　┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓<BR> 

　　┃投保单位名称：＿＿＿＿＿联系人＿＿＿＿＿发工资日＿＿＿＿＿　　　　　┃<BR> 

　　┃　　单位地址：＿＿＿＿＿电话＿＿＿＿＿　厂休日＿＿＿＿＿＿　　　　　┃<BR> 

　　┠────┬────────────────────────┐　　　　┃<BR> 

　　┃投保人数│在册人员总计　　　　人参加保险　　　　　　　　　│　　　　┃<BR> 

　　┠────┼────────────────────────┤　　　　┃<BR> 

　　┃保险金额│每人投保　　份，满期时保险金额　　　　元。　　　│　　　　┃<BR> 

　　┠────┼────────────────────────┤投保单位┃<BR> 

　　┃保险费　│每人每月交费　　　元。　　　　　　　　　　　　　│　盖章　┃<BR> 

　　┠────┼────────────────────────┤　　　　┃<BR> 

　　┃保险期限│自　　年　　月　　日起至　　年　　月　　日止　　│　　　　┃<BR> 

　　┠────┴────────────────────────┘　　　　┃<BR> 

　　┃┌────────────────────┐　　　　　　　　　　　　┃<BR> 

　　┃│参加保险人员名单详见后附“被保险人名单”│　　　　　　　　　　　　┃<BR> 

　　┃└────────────────────┘　　　　　　　　　　　　┃<BR> 

　　┠───────────────┬──────────────　　　　┃<BR> 

　　┃　　保险单号码：　单位代号　　│投保日期　　年　　月　　日　　　　　┃<BR> 

　　┃　　──────────　　　│　　　　　　　　　　　　　　　　　　┃<BR> 

　　┃　　　　　　　　　　　　　　　├──────────────────┨<BR> 

　　┃　　　　　　　　　　　　　　　│经办人：　　　　　　　　　　　　　　┃<BR> 

　　┃　　主管：　　复核：　　签单：│　　　　　　　　　　　　　　　　　　┃<BR> 

　　┗━━━━━━━━━━━━━━━┷━━━━━━━━━━━━━━━━━━┛　　<BR> 

　　２．团体人寿保险单<BR> 

　　贰拾年期<BR> 

　　－－－－－★－－－－－<BR> 

　　┏━━━━━━┯━━━━━━━━━━━━━━━┯━━━━┯━━━━━━┓<BR> 

　　┃投保单位名称│　　　　　　　　　　　　　　　│单位代号│　　　　　　┃<BR> 

　　┠────┬─┴───────────────┴────┴──────┨<BR> 

　　┃地　　址│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃<BR> 

　　┠────┼─────────────────────────────┨<BR> 

　　┃投保人数│在册人员总计　　人。　　┌参加保险人员名单　　　　　　　　┃<BR> 

　　┃　　　　│　　　　　　　　　　　　│　　　　　　　　　　　　　　　　┃<BR> 

　　┃　　　　│　　　　　　　　　　　　└详见后附清单　　　　　　　　　　┃<BR> 

　　┠────┼─────────────────────────────┨<BR> 

　　┃保险金额│每人投保　　份，满期时每人保险金　　元。　　　　　　　　　┃<BR> 

　　┠────┼─────────────────────────────┨<BR> 

　　┃保险费　│每人每月交费　　元。　　　　　　　　　　　　　　　　　　　┃<BR> 

　　┠────┼─────────────────────────────┨<BR> 

　　┃保险期限│自　　年　　月　　日起至　　年　　月　　日止。　　　　　　┃<BR> 

　　┗━━━━┷━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛<BR> 

　　根据《团体人寿保险办法》规定，投保单位所开列的全部在册人员名单（即被保险人），经审核，<BR> 

　　本公司同意承保，并签发本保险单，其承保责任范围，均按本办法规定办理，今后人员名单如有变动，<BR> 

　　本公司仅按变动清单调正后的人员承担保险责任。<BR> 

　　＿＿＿＿＿保险公司<BR> 

　　主管：＿＿＿＿＿　　复核：＿＿＿＿＿　　签单员：＿＿＿＿＿<BR> 

　　<BR> 

　　＿＿＿年＿＿＿月＿＿＿日<BR> 

　　<BR> 

　　附：中外合资经营企业中国职工养老保险合同<BR> 

　　<BR> 

　　中外合资经营企业中国职工养老保险合同，是投保人与保险人就中外合资经营企业中国职工养老保<BR> 

　　险事宜所达成的具有民事权利和民事义务关系的协议。<BR> 

　　中外合资经营企业中国职工养老保险合同包括有：中外合资经营企业中国职工养老保险投保单、中<BR> 

　　外合资经营企业中国职工养老保险保险单<BR> 

　　当事人在填写中外合资经营企业中国职工养老保险合同时，应按要求如实填写中外合资经营企业中<BR> 

　　国职工养老保险投保单、中外合资经营企业中国职工养老保险保险单。<BR> 

　　附合同格式如下：<BR> 

　　<BR> 

　　中外合资经营企业中国职工养老保险合同<BR> 

　　<BR> 

　　１．中外合资经营企业中国职工养老保险投保单<BR> 

　　编号：＿＿＿＿＿<BR> 

　　┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓<BR> 

　　┃投保单位名称：　　　　　　联系人：　　　　　银行帐号：　　　　　　　┃<BR> 

　　┠──────────────────────────────────┨<BR> 

　　┃投保单位地址：　　　　　　　　　　　　　　　　　　　　　电话　　　　┃<BR> 

　　┠──────────────────────────────────┨<BR> 

　　┃投保单位正式职工人数：　　人，名单详见后附《养老保险基金缴费清单》。┃<BR> 

　　┠──────────────────────────────────┨<BR> 

　　┃第一次缴纳养老基金（大写）　　元（实得工资总额＄　×３０％＝　　＄）┃<BR> 

　　┠───┬────────────────────┬─────────┨<BR> 

　　┃合同　│中方：　　　　　　　　　　　　　　　　　│　　　　　　　　　┃<BR> 

　　┃　　　├────────────────────┤（投保单位盖章）　┃<BR> 

　　┃单位　│外方：　　　　　　　　　　　　　　　　　│　　　　　　　　　┃<BR> 

　　┠───┴────────────────────┤　　　　　　　　　┃<BR> 

　　┃合同期：自　　年　月　日　　　　　　　　　　　　│　　　　　　　　　┃<BR> 

　　┃　　　　　　　　　　　　　　　　　　　　　　　　│　　　　　　　　　┃<BR> 

　　┃　　至　　年　　月　　日计　　年期　　　　　　　│　　　主管：　　　┃<BR> 

　　┠────────────────────────┤投保日期：　　　　┃<BR> 

　　┃投保单位性质：合资、合作、外资、其他（以√表示）│　　年　　月　　日┃<BR> 

　　┠────────────────────────┴─────────┨<BR> 

　　┃┌────────────────────────────────┐┃<BR> 

　　┃│保险凭证号码：　　　　　　　　　　起保日期：　　　　　年　月　日│┃<BR> 

　　┃├────────────────────────────────┤┃<BR> 

　　┃│主管：　　复核：　　经办：　　签单：　　签单日期：　　年　月　日│┃<BR> 

　　┃└────────────────────────────────┘┃<BR> 

　　┠──────────────────────────────────┨<BR> 

　　┃备注：　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃<BR> 

　　┠─┬────────────────────────────────┨<BR> 

　　┃　│　　１．本投保单位由投保填列，一单位一单。“人数”指投保当月数，┃<BR> 

　　┃说│“实得工资总额”指第一次缴费时累计总额。　　　　　　　　　　　　┃<BR> 

　　┃　│　　２．本投保单经保险公司收到养老基金并签发正式保险凭证后方始生┃<BR> 

　　┃明│效。　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃<BR> 

　　┃　│　　３．粗线框中内容由保险公司填写。　　　　　　　　　　　　　　┃<BR> 

　　┗━┷━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛　　<BR> 

　　２．中外合资经营企业中国职工养老保险保险单<BR> 

　　（编号：＿＿＿＿＿）<BR> 

　　投保单位名称：＿＿＿＿＿<BR> 

　　交费标准：实得工资总额的＿＿＿＿＿％，投保时职工人数：＿＿＿＿＿人<BR> 

　　起保日期：＿＿＿年＿＿＿月＿＿＿日<BR> 

　　投保单位开列的被保险人名单和实得工资总额标准经审核符合规定，本公司同意承保。特制发本单<BR> 

　　为凭。<BR> 

　　（被保险人名单另附。被保险人退休时另办养老金申领手续）<BR> 

　　签证公司盖章：＿＿＿＿＿　　　　　　　　　　　经（副）理：＿＿＿＿＿<BR> 

　　主　　管：＿＿＿＿＿<BR> 

　　复　　核：＿＿＿＿＿<BR> 

　　经　　办：＿＿＿＿＿<BR> 

　　签证日期：＿＿＿年＿＿＿月＿＿＿日<BR> 

　　┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓<BR> 

　　┃批注事项：　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃<BR> 

　　┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃<BR> 

　　┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛<BR> 

　　<BR> 

　　　　 </p>

    </td>

  </tr>

</table>

<br><center>
<input type="button" class="BigButton" value="回上一层" onclick="history.go(-1)">
<input type="button" class="BigButton" value="回主目录" onclick="location='../../index.jsp';">
</center><br>

</html>