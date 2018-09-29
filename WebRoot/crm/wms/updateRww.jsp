<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改调拨产品</title>
    <link rel="shortcut icon" href="favicon.ico"/>
    
	<meta http-equiv="x-ua-compatible" content="ie=EmulateIE7"/>
    <meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script type="text/javascript" src="js/prototype.js"></script>
	<script type="text/javascript" src="js/wms.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
    <script type="text/javascript" src="js/chooseStro.js"></script>
    <script type="text/javascript" src="js/formCheck.js"></script>
    <script type="text/javascript">       
		function check(){
		 	var num="<bean:write name='rstroPro' property='rspProNum' format='0.00'/>";//库存数量
		 	var num2=$("rwwNum").value;
			var errStr = "";
			if(isEmpty("rwwNum")){
				errStr+="- 未填写调拨数量！\n"; 
			}
			else if(isNaN(num2)){
				errStr+="- 调拨数量请填写数字！\n";
			}
			if(parseFloat(num)==0){
				errStr+="- 该产品没有库存！\n";
			}
			if(parseFloat(num2)>parseFloat(num)){
				errStr+="- 调拨数量大于库存，无法调拨！\n";
			}
			if(errStr!=""){
				errStr+="\n请返回修改...";
				alert(errStr);
				return false;
			}
			else{
				waitSubmit("dosave","保存中...");
				waitSubmit("doCancel");
				return $("register").submit();
			}				  
		}	
  </script>
  </head>
  <body>
  <logic:notEmpty name="rwmsWms">
  <div class="inputDiv">
  		<form action="wwoAction.do" method="post" id="register">				
  		<input type="hidden" name="op" value="updateRww">
  		<input type="hidden" name="wprCode" id="wprCode" value="${wprCode}">
  		<input type="hidden" name="wchId" value="${wchId}">
  		<input type="hidden" name="rwwId" value="${rwwId}">
		<table class="dashTab inputForm single" cellpadding="0" cellspacing="0">
        	<tbody>
            	<tr>
                    <th>调出仓库：</th>
                    <td><span class="textOverflow" style="width:150px" title="${wmsChange.wmsStroByWchOutWms.wmsName}">${wmsChange.wmsStroByWchOutWms.wmsName}</span></td>
                </tr>
                <tr>	
                    <th>调入仓库：</th>
                    <td><span class="textOverflow" style="width:150px" title="${wmsChange.wmsStroByWchInWms.wmsName}">${wmsChange.wmsStroByWchInWms.wmsName}</span></td>				
                </tr>
                <tr>
                    <th>调拨产品：</th>
                    <td><span class="textOverflow" style="width:150px" title="${rwmsWms.wmsProduct.wprName}<logic:notEmpty name='rwmsWms' property='wmsProduct.wprModel'>/${rwmsWms.wmsProduct.wprModel}</logic:notEmpty>">${rwmsWms.wmsProduct.wprName}<logic:notEmpty name='rwmsWms' property='wmsProduct.wprModel'>/${rwmsWms.wmsProduct.wprModel}</logic:notEmpty></span></td>				
                </tr>
                <tr>
                     <th>库存量：</th>
                     <td><bean:write name="rstroPro" property="rspProNum" format="###,##0.00"/>&nbsp;</td>
                </tr>
                <tr>
                    <th class="required">调拨量：<span class='red'>*</span></th>
                    <td><input name="rwwNum" id="rwwNum" type="text" onBlur="checkIsNum(this)" class="inputSize2" value="<bean:write name='rwmsWms' property='rwwNum' format='0.00'/>"></td>
                 </tr>
                 <tr class="noBorderBot">
                    <th>备注：</th>
                    <td><textarea name="rwwRemark" class="inputSize2" onBlur="autoShort(this,500)">${rwmsWms.rwwRemark}</textarea></td>
                </tr>
                <tr class="submitTr">
                    <td colspan="2">
                    <input type="button" id="dosave" class="butSize1" value="保存" onClick="check()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="button" class="butSize1" id="doCancel" value="取消" onClick="cancel()"></td>
                </tr>	
                <tr>
                    <td class="tipsTd" colspan="4">
                        <div class="tipsLayer">
                            <ul>
                                <li>&nbsp;<span class="impt">调拨量</span>必须小于<span class="impt">库存量</span>才能进行调拨。</li>
                            </ul>
                        </div>
                    </td>
                </tr>
            </tbody>
        			
	 	</table>
	</form>
    
  </div>
  </logic:notEmpty>
	<logic:empty name="rwmsWms">
		    <div class="redWarn"><img src="images/content/fail.gif" alt="警告" style="vertical-align:middle"/>&nbsp;该产品已被删除</div>
	</logic:empty>
  </body>
</html>
