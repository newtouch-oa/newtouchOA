<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/core/inc/header.jsp" %> 
<%
	String seqId=request.getParameter("seqId");
	if(seqId==null){
		seqId="";
}
  String curDate = YHUtility.getCurDateTimeStr();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询</title>
<link rel="stylesheet"	href="<%=cssPath%>/style.css">
<script type="text/Javascript"	src="<%=contextPath%>/core/js/datastructs.js"></script>
<link rel="stylesheet" href="<%=cssPath%>/cmp/Calendar.css" type="text/css" />

<script type="text/Javascript" src="<%=contextPath%>/core/js/sys.js"></script>
<script type="text/Javascript"	src="<%=contextPath%>/core/js/prototype.js"></script>
<script type="text/Javascript"	src="<%=contextPath%>/core/js/smartclient.js"></script>
<script type="text/Javascript"	src="<%=contextPath%>/core/js/cmp/select.js"></script>
<script type="text/Javascript" src="<%=contextPath%>/core/js/orgselect.js" ></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/cmp/Calendarfy.js"></script>

<script type="text/javascript">
//alert("<%=seqId%>");
var seqId='<%=seqId%>';
var requestURL="<%=contextPath%>/yh/core/funcs/filefolder/act/YHFileContentAct";

function checkForm(){
	if($("SUBJECT").value=="" && $("CONTENT_NO").value=="" && $("ATTACHMENT_DESC").value=="" && $("ATTACHMENT_NAME").value=="" && $("sendTime_Min").value=="" && $("sendTime_Max").value==""){
		alert("请指定至少一个查询条件！");
		return false;
	}
	return true;
}

function sendForm(){
	//alert("sendForm");
	if(checkForm()){
		var subject=$("SUBJECT").value;
		var contentNo=$("CONTENT_NO").value;
		var attachmentDesc=$("ATTACHMENT_DESC").value;
		var attachmentName=$("ATTACHMENT_NAME").value;
		var sendTimeMin=$("sendTime_Min").value;
		var sendTimeMax=$("sendTime_Max").value;
		//alert(subject);
		//var url=requestURL+"/queryFileContentInfoById.act?sortId="+seqId;
		var requestUrl="search.jsp?sortId="+seqId +"&subject="+subject+"&contentNo="+contentNo+"&attachmentDesc="+attachmentDesc+"&attachmentName="+attachmentName+"&sendTimeMin="+sendTimeMin+"&sendTimeMax="+sendTimeMax;
		location = requestUrl;
		//alert(location);
		
	}
}


function setDate(){
//日期
var date1Parameters = {
   inputId:'sendTime_Min',
   property:{isHaveTime:true}
   ,bindToBtn:'date1'
};
new Calendar(date1Parameters);
var date2Parameters = {
   inputId:'sendTime_Max',
   property:{isHaveTime:true}
   ,bindToBtn:'date2'
};
new Calendar(date2Parameters);

}
</script>


</head>

<body onload="setDate();">
<table border="0" width="100%" cellspacing="0" cellpadding="3" class="small">
  <tr>
    <td class="Big"><img src="<%=contextPath %>/core/funcs/filefolder/images/folder_search.gif" align="middle"><b><span class="Big1"> </span></b><br>
    </td>
  </tr>
</table>

<br>
 
<form action="" name="form1" onsubmit="">
<table class="TableBlock" width="450" align="center">
  <tr class="TableData">
      <td nowrap align="center">标题包含文字：</td>
      <td nowrap><input type="text" name="SUBJECT" id="SUBJECT" class="BigInput" size="20"></td>
  </tr>
  <tr class="TableData">
      <td nowrap align="center">排序号：</td>
      <td nowrap><input type="text" name="CONTENT_NO" id="CONTENT_NO" class="BigInput" size="10"></td>
  </tr>
  <tr>
    <td nowrap class="TableData" align="center">内容[关键词1]：</td>
    <td class="TableData"><input type="text" name="KEY1" class="BigInput" size="20"></td>
  </tr>
  <tr>
    <td nowrap class="TableData" align="center">内容[关键词2]：</td>
    <td class="TableData"><input type="text" name="KEY2" class="BigInput" size="20"></td>
  </tr>
  <tr>
    <td nowrap class="TableData" align="center">内容[关键词3]：</td>
    <td class="TableData"><input type="text" name="KEY3" class="BigInput" size="20"></td>
  </tr>
  <tr class="TableData">
      <td nowrap align="center">附件说明包含文字：</td>
      <td nowrap><input type="text" name="ATTACHMENT_DESC" id="ATTACHMENT_DESC" class="BigInput" size="20"></td>
  </tr>
  <tr class="TableData">
      <td nowrap align="center">附件文件名包含文字：</td>
      <td nowrap><input type="text" name="ATTACHMENT_NAME" id="ATTACHMENT_NAME" class="BigInput" size="20"></td>
  </tr>
  <tr class="TableData">
      <td nowrap align="center">附件内容包含文字：</td>
      <td nowrap><input type="text" name="ATTACHMENT_DATA" class="BigInput" size="20"></td>
  </tr>
  <tr class="TableData">
      <td nowrap align="center">日期：</td>
      <td nowrap>
        <input type="text" name="sendTime_Min" id="sendTime_Min" size="19" maxlength="19" class="BigInput" value="">

        <img id="date1" align="middle" src="<%=contextPath %>/core/funcs/filefolder/images/calendar.gif" align="middle" border="0" style="cursor:pointer" >

        <input type="text" name="sendTime_Max" id="sendTime_Max" size="20" maxlength="19" class="BigInput" value="<%=curDate %>">
        <img id="date2" align="middle" src="<%=contextPath %>/core/funcs/filefolder/images/calendar.gif" align="middle" border="0" style="cursor:pointer" >
      </td>
  </tr>
  <tr >
      <td nowrap class="TableControl" colspan="2" align="center">
          <input type="hidden" name="SORT_ID" value="11">
          <input type="hidden" name="FILE_SORT" value="1">
          <input type="button" value="查询" onclick="sendForm();" class="BigButton" title="进行文件查询">&nbsp;&nbsp;
          <input type="button" value="返回" class="BigButton" onclick="location='folder.jsp?seqId=<%=seqId%>&FILE_SORT=1&SORT_ID=11'">
      </td>
  </tr>
</table>
</form>



</body>
</html>