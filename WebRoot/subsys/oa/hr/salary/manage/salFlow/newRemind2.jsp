<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/core/inc/header.jsp" %>
<!DOCTYPE  html  PUBLIC  "-//W3C//DTD  XHTML  1.0  Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
  String userName = request.getParameter("userNameTo");
%>
<meta  http-equiv="Content-Type"  content="text/html;  charset=utf-8">
<link rel="stylesheet" href = "<%=cssPath%>/style.css">
<script type="text/javascript" src="<%=contextPath %>/core/js/sys.js"></script>
<script  type="text/Javascript"  src="<%=contextPath%>/core/js/prototype.js"  ></script>
<title>操作结果</title>
<script type="text/javascript">
var userName = "<%=userName%>";
function doInit(){
	$('content').innerHTML = "<b>已发送工资条：</b><br>" + userName;
}
</script>
</head>

<body topmargin="5" onload="doInit();">
<table class="MessageBox" align="center" width="100%">
  <tr>
    <td class="msg info">
      <h4 class="title">提示</h4>
      <div class="content" style="font-size:12pt" id="content" name="content"></div>
    </td>
  </tr>
</table>
<br>
<center>
<input type="button" class="BigButton" value="返回" onclick="history.go(-1);">
</center>
</body>
</html>