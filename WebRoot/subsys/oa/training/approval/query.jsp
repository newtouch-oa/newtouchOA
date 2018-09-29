<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/core/inc/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>培训计划查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href = "<%=cssPath%>/style.css">
<link rel="stylesheet" href = "<%=cssPath%>/cmp/Calendar.css">
<script type="text/javascript" src="<%=contextPath %>/core/js/prototype.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/datastructs.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/sys.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/smartclient.js"></script>
<script type="text/Javascript" src="<%=contextPath%>/core/js/cmp/select.js" ></script>
<script type="text/Javascript" src="<%=contextPath%>/core/js/orgselect.js" ></script>
<script type="text/javascript" src="<%=contextPath%>/core/js/cmp/Calendarfy.js"></script>
<script type="text/javascript" src="<%=contextPath %>/subsys/oa/training/js/util.js"></script>
<script type="text/javascript" src="<%=contextPath %>/subsys/oa/training/js/trainingapprovallogic.js"></script>
<script type="text/javascript">

function doInit(){
 　var beginParameters = {
     inputId:'beginDate',
     property:{isHaveTime:true}
     ,bindToBtn:'beginDateImg'
 };
 new Calendar(beginParameters);

 var endParameters = {
     inputId:'endDate',
     property:{isHaveTime:true}
     ,bindToBtn:'endDateImg'
 };
 new Calendar(endParameters);
}

function LoadWindow(){
  var URL= contextPath + "/subsys/oa/training/approval/plannoinfo/index.jsp";
  loc_x = document.body.scrollLeft + event.clientX - event.offsetX + 800;
  loc_y = document.body.scrollTop + event.clientY - event.offsetY + 500;
  window.showModalDialog(URL,self,"edge:raised;scroll:0;status:0;help:0;resizable:1;dialogWidth:320px;dialogHeight:245px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
}

function resetBeginTime(){
  var date = new Date();
  var y = date.getFullYear();
  var m = date.getMonth() + 1;
  m = (m > 9) ? m : '0' + m;
  var d = date.getDate();
  d = (d > 9) ? d : '0' + d;
  var time = date.toLocaleTimeString();
  $('beginDate').value = y + '-' + m + '-' + d + ' ' + time;
}

function resetEndTime(){
  var date = new Date();
  var y = date.getFullYear();
  var m = date.getMonth() + 1;
  m = (m > 9) ? m : '0' + m;
  var d = date.getDate();
  d = (d > 9) ? d : '0' + d;
  var time = date.toLocaleTimeString();
  $('endDate').value = y + '-' + m + '-' + d + ' ' + time;
}

function doSubmit(){
  var beginDate = $("beginDate").value;
  var endDate = $("endDate").value;
  if(!Test($("beginDate"),$("endDate"))){
    return;
  }
  var query = $("form1").serialize();
  location = "<%=contextPath%>/subsys/oa/training/approval/search.jsp?"+query;
  
}
</script>
</head>
<body onload="doInit()" topmargin="5">
<table border="0" width="80%" cellspacing="0" cellpadding="3" class="small">
  <tr>
    <td class="Big"><img align="absMiddle" src="<%=imgPath%>/infofind.gif"><span class="big3"> 培训计划查询</span></td>
  </tr>
</table>
<br>
<form enctype="multipart/form-data" action=""  method="post" name="form1" id="form1">
 <table class="TableBlock" width="450" align="center">
    <tr>
      <td nowrap class="TableData">培训计划名称：</td>
      <td class="TableData">
        <INPUT type="text"name="tPlanName" id="tPlanName" class=BigStatic size="15"  readonly>
        <INPUT type="hidden" name="tPlanNo" id="tPlanNo" value="">
        <INPUT type="hidden" name="tInstitutionName" id="tInstitutionName" value="">
        <a href="javascript:;" class="orgAdd" onClick="LoadWindow()">选择</a>
      </td>
    </tr>
    <tr>
      <td nowrap class="TableData">培训渠道：</td>
      <td class="TableData" >
        <select name="tChannel" id="tChannel" title="">
          <option value="" >培训渠道&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
          <option value="0">内部培训</option>
          <option value="1">渠道培训</option>
        </select>
      </td>
    </tr>
   <tr>
     <td nowrap class="TableData">审批人：</td>
      <td class="TableData">
        <input type="text" name="assessingOfficerDesc" id="assessingOfficerDesc" size="10" class="BigStatic" readonly>&nbsp;
        <input type="hidden" name="assessingOfficer" id="assessingOfficer" value="">
        <a href="javascript:;" class="orgAdd" onClick="selectSingleUser(['assessingOfficer', 'assessingOfficerDesc'],null,null,1);">添加</a>
        <a href="javascript:;" class="orgClear" onClick="$('assessingOfficer').value='';$('assessingOfficerDesc').value='';">清空</a>
      </td>
   </tr>
   <tr>
      <td nowrap class="TableData">计划（审批）状态：</td>
      <td class="TableData" >
        <select name="assessingStatus" id="assessingStatus" title="">
          <option value="" >计划(审批)状态</option>
          <option value="0">待审批</option>
          <option value="1">已批准</option>
          <option value="2">未批准</option>
        </select>
      </td>
    </tr>
    <tr>
      <td nowrap class="TableData"> 审批时间：</td>
      <td class="TableData">
        <input type="text" name="beginDate" id="beginDate" size="16" maxlength="19" class="BigInput" value="">
        <img id="beginDateImg" src="<%=imgPath%>/calendar.gif" align="absMiddle" border="0" style="cursor:pointer">
        &nbsp;&nbsp;<a href="javascript:resetBeginTime();">置为当前时间</a>
        <br>至<br>
        <input type="text" name="endDate" id="endDate" size="16" maxlength="19" class="BigInput" value="">
        <img id="endDateImg" src="<%=imgPath%>/calendar.gif" align="absMiddle" border="0" style="cursor:pointer">
        &nbsp;&nbsp;<a href="javascript:resetEndTime();">置为当前时间</a>      
      </td>
    </tr>
    <tr align="center" class="TableControl">
      <td colspan="2" nowrap>
        <input type="button" value="查询" class="BigButton" onclick="doSubmit();">&nbsp;&nbsp;
        <input type="reset" value="重填" class="BigButton">&nbsp;&nbsp;
      </td>
    </tr>
    <input type="hidden" name="toId" id="toId" value=""> 
  </form>
 </table>
</body>
</html>