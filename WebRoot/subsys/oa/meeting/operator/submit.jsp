<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/core/inc/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>公告通知设置</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href = "<%=cssPath%>/style.css">
<script type="text/javascript" src="<%=contextPath %>/core/js/prototype.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/datastructs.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/sys.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/smartclient.js"></script>

</head>
<body topmargin="5">
<table class="MessageBox" align="center" width="240">
  <tr>
    <td class="msg info">
      <h4 class="title">提示</h4>

      <div class="content" style="font-size:12pt">保存成功！</div>
    </td>
  </tr>
</table>
<br>
<center>
  <input type="button" class="BigButton" value="返回" onclick="location='<%=contextPath%>/subsys/oa/meeting/operator/index.jsp'">
</center>
</body>
</html>