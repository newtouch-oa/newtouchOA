<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/core/inc/header.jsp" %> 


<html>
<head>
<title>选择计划名称</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href = "<%=cssPath%>/style.css">
<script type="text/javascript" src="<%=contextPath %>/core/js/datastructs.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/sys.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/prototype.js"></script>
<script type="text/javascript" src="<%=contextPath %>/core/js/smartclient.js"></script>
<style>
.menulines{}
</style>

<SCRIPT>
<!--

var menu_enter="";

function borderize_on(e){
 color="#708DDF";
 source3=event.srcElement
 if(source3.className=="menulines" && source3!=menu_enter)
    source3.style.backgroundColor=color;
}

function borderize_on1(e){
 for (i=0; i<document.all.length; i++){ 
   document.all(i).style.borderColor="";
   document.all(i).style.backgroundColor="";
   document.all(i).style.color="";
   document.all(i).style.fontWeight="";
 }

 color="#003FBF";
 source3=event.srcElement

 if(source3.className=="menulines"){ 
   source3.style.borderColor="black";
   source3.style.backgroundColor=color;
   source3.style.color="white";
   source3.style.fontWeight="bold";
 }

 menu_enter=source3;
}

function borderize_off(e){
  source4=event.srcElement
  if(source4.className=="menulines" && source4!=menu_enter){
    source4.style.backgroundColor="";
    source4.style.borderColor="";
  }
}

//-->
</SCRIPT>
<script Language="JavaScript">
var parent_window = parent.dialogArguments;

function addPlanName(tPlanNo, tPlanName){
  //parent_window.form1.tInstitutionName.value = tInstitutionName;
  parent_window.form1.PLAN_NO.value = tPlanNo;
  parent_window.form1.PLAN_NAME.value = tPlanName;
  parent.close();
}

function doinit(){
  var parent_window = parent.dialogArguments;
  var userId = parent_window.form1.toId.value;	
  if(userId){    
    getTrainingAjaxFunc('', userId);
  }else{
    getTrainingAjaxFunc('', '');
  }	  
}

function getTrainingAjaxFunc(param, userId){
  var condition = "";
  if(param){
    condition = toUtf8Uri(param);
  } 
  var url = contextPath + "/yh/subsys/oa/hr/recruit/hrPool/act/YHHrRecruitPoolAct/getHrRecruitPlanList.act?condition=" + encodeURIComponent(condition) +"&userId=" +userId;
  var rtjson = getJsonRs(url); 
  if(rtjson.rtState == '0'){
    var data = rtjson.rtData;
    var dataLength = data.length; 
    if(dataLength > 0){
      var trainingStr = "";
      $("msrg").update("");
      $("TableControl").show();
      $("tableHead").show();
      for(var i = 0; i < dataLength; i++){
        var tPlanNo = data[i].planNo;
        var tPlanName = data[i].planName;
        var tInstitutionName = "";
        trainingStr += "<tr class=\"TableControl\">";
        trainingStr += "<td class=\"menulines\" align=\"center\" style=\"cursor:pointer\" onclick=javascript:addPlanName('" + tPlanNo.escapeHTML().replace(/\\/g,"\\\\").replace(/'/g,"\\\'").replace(/\"/g,"\\\"") + "','" + tPlanName.escapeHTML().replace(/\\/g,"\\\\").replace(/'/g,"\\\'").replace(/\"/g,"\\\"") + "') >";
        trainingStr += tPlanName.escapeHTML() +"_"+ tPlanNo +"</td>";
        trainingStr += "</tr>";   
      }
      $("tableList").update(trainingStr);
    }else{  
      var trainingInfo="";
      trainingInfo +='<table align="center" width="300" class="MessageBox">';
      trainingInfo += '<tbody>';
      trainingInfo +=    '<tr>';
      trainingInfo +=    '<td class="msg info">';
      trainingInfo +=       '<h4 class="title" align="left">提示</h4>';
      trainingInfo +=       '<div style="font-size: 12pt;" class="content">人才库没有人才信息</div>';
      trainingInfo +=    '</td>';
      trainingInfo += '</tr>';
      trainingInfo += '</tbody>';
      trainingInfo += '</table>'  ;      
      $("msrg").update(trainingInfo);
      $("TableControl").hide();
      $("tableHead").hide();
    }
  }
}
</script>
</head >
<body onload="doinit();" class="bodycolor" onMouseover="borderize_on(event)" onMouseout="borderize_off(event)" onclick="borderize_on1(event)" topmargin="5">
<table class="TableList"  id="tableHead" width="95%" align="center">
<thead class="TableControl" id="TableControl">
  <th bgcolor="#d6e7ef" align="center"><b>选择招聘计划（最多显示50条）</b></th>
</thead>
<tbody id="tableList"> 
</tbody>
</table>
<div id="msrg"></div>
</body>
</html>
