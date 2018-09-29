var KEY_TAB=9;var KEY_ENTER=13;var KEY_ESC=27;var KEY_PAGE_UP=33;var KEY_PAGE_DOWN=34;var KEY_PAGE_END=35;var KEY_PAGE_HOME=36;var KEY_LEFT=37;var KEY_UP=38;var KEY_RIGHT=39;var KEY_DOWN=40;var KEY_INS=45;var KEY_DEL=46;var KEY_A=65;var KEY_B=66;var KEY_C=67;var KEY_D=68;var KEY_E=69;var KEY_F=70;var KEY_G=71;var KEY_H=72;var KEY_I=73;var KEY_J=74;var KEY_K=75;var KEY_L=76;var KEY_M=77;var KEY_N=78;var KEY_O=79;var KEY_P=80;var KEY_Q=81;var KEY_R=82;var KEY_S=83;var KEY_T=84;var KEY_U=85;var KEY_V=86;var KEY_W=87;var KEY_X=88;var KEY_Y=89;var KEY_Z=90;var KEY_F1=112;var KEY_F2=113;var KEY_F3=114;var KEY_F4=115;var KEY_F5=116;var KEY_F6=117;var KEY_F7=118;var KEY_F8=119;var KEY_F9=120;var KEY_F10=121;var KEY_F11=122;var KEY_F12=123;function KeyNode(cntrlName,handleNodeEvent){this.cntrlName=cntrlName;this.handleNodeEvent=handleNodeEvent}function KeyMap(){this.keyNodeMap=new ArrayHashMap();this.handleMapEvent=null;this.contains=function(cntrlName){return this.keyNodeMap.containsKey(cntrlName)};this.addCntrl=function(keyNode){if(typeof keyNode=="string"){var cntrlArray=keyNode.split(",");for(var i=0;i<cntrlArray.length;i++){var cntrlName=trim(cntrlArray[i]);this.keyNodeMap.put(cntrlName,new KeyNode(cntrlName,null))}}else{this.keyNodeMap.put(keyNode.cntrlName,keyNode)}};this.clear=function(){this.keyNodeMap.clear()};this.getKeyNodeByIndex=function(index){return this.keyNodeMap.getValue(index)};this.getCntrlNameByIndex=function(index){return this.getKeyNodeByIndex(index).cntrlName};this.getCntrlByIndex=function(index){return document.getElementById(this.getCntrlNameByIndex(index))};this.nextKeyNode=function(cntrlName){var keyNodeIndex=this.keyNodeMap.keyIndexOf(cntrlName);if(keyNodeIndex<0){return null}var nextNodeIndex=(keyNodeIndex+1)%this.keyNodeMap.size();return this.getKeyNodeByIndex(nextNodeIndex)};this.handleKeyEvent=function(){var cntrl=event.srcElement;var cntrlName=cntrl.name?cntrl.name:cntrl.id;var keyNode=this.keyNodeMap.get(cntrlName);if(!keyNode){return}if(keyNode.handleNodeEvent){keyNode.handleNodeEvent(cntrlName)}else{if(this.handleMapEvent){this.handleMapEvent(cntrlName)}else{this.selectNextCntrl(cntrlName)}}};this.focus=function(ctnrlId){if(!ctnrlId){ctnrlId=0}if(typeof ctnrlId=="string"){ctnrlId=this.keyNodeMap.keyIndexOf(ctnrlId)}var cntrl=this.getCntrlByIndex(ctnrlId);if(cntrl){cntrl.focus()}};this.select=function(ctnrlId){if(ctnrlId==null){ctnrlId=0}if(typeof ctnrlId=="string"){ctnrlId=this.keyNodeMap.keyIndexOf(ctnrlId)}var cntrl=this.getCntrlByIndex(ctnrlId);if(cntrl){cntrl.focus();if(cntrl.select&&cntrl.value){cntrl.select()}}};this.selectNextCntrl=function(cntrlName){var nextKeyNode=this.nextKeyNode(cntrlName);if(!nextKeyNode){return}var cntrlName=nextKeyNode.cntrlName;var cntrl=document.getElementById(cntrlName);var cnt=0;while(true){cnt++;if(cnt>=this.keyNodeMap.size()){break}if(!cntrl){break}if(cntrl.readOnly||cntrl.disabled||cntrl.style.display=="none"||cntrl.type.toLowerCase()=="hidden"){nextKeyNode=this.nextKeyNode(cntrlName);if(!nextKeyNode){break}cntrlName=nextKeyNode.cntrlName;cntrl=document.getElementById(cntrlName)}else{cntrl.focus();if(cntrl.value){cntrl.select()}break}}}}function KeyState(keyCode,isCtrl,isShift,isAlt){this.keyCode=keyCode;this.isCtrl=isCtrl;this.isShift=isShift;this.isAlt=isAlt;this.toString=function(){return""+this.keyCode+"-"+(this.isCtrl?"1":"0")+"-"+(this.isShift?"1":"0")+"-"+(this.isAlt?"1":"0")}}function KeyEventManager(){this.isCtrl=null;this.isShift=null;this.isAlt=null;this.keyCode=null;this.keyEventMap=new ArrayHashMap();this.focus=function(cntrlName){if(!cntrlName){cntrlName=0}var keyCnt=this.keyEventMap.size();for(var i=0;i<keyCnt;i++){var handler=this.keyEventMap.getValue(i);if(handler instanceof KeyMap){if(handler.contains(cntrlName)){handler.focus(cntrlName);break}}}};this.select=function(cntrlName){if(!cntrlName){cntrlName=0}var keyCnt=this.keyEventMap.size();for(var i=0;i<keyCnt;i++){var handler=this.keyEventMap.getValue(i);if(handler instanceof KeyMap){if(handler.contains(cntrlName)){handler.select(cntrlName);break}}}};this.addKeyEventHandler=function(keyState,handler,cntrlName){if(typeof keyState=="number"){keyState=""+keyState}if(typeof handler=="string"){var cntrls=handler;handler=new KeyMap();handler.addCntrl(cntrls)}if(cntrlName){var cntrlHandler=handler;handler=new KeyMap();handler.addCntrl(new KeyNode(cntrlName,cntrlHandler))}if(typeof keyState=="string"){var keyCodeArray=keyState.split(",");for(var i=0;i<keyCodeArray.length;i++){var keyCode=keyCodeArray[i];this.keyEventMap.put(new KeyState(keyCode).toString(),handler)}}else{this.keyEventMap.put(keyState.toString(),handler)}};this.removeKeyEvent=function(keyState){this.keyEventMap.remove(keyState.toString())};this.getKeyEventMap=function(keyState){return this.keyEventMap.get(keyState.toString())};this.handleKeydown=function(){this.isCtrl=event.ctrlKey;this.isShift=event.shiftKey;this.isAlt=event.altKey;this.keyCode=event.keyCode;if(this.keyCode==KEY_TAB){var currKeyState=new KeyState(this.keyCode,this.isCtrl,this.isShift,this.isAlt);var handler=this.getKeyEventMap(currKeyState);if(handler){event.returnValue=false}}};this.handleKeyup=function(){if(!this.keyCode){this.isCtrl=false;this.isShift=false;this.isAlt=false;return}var currKeyState=new KeyState(this.keyCode,this.isCtrl,this.isShift,this.isAlt);var handler=this.getKeyEventMap(currKeyState);if(handler&&handler.handleKeyEvent){handler.handleKeyEvent()}else{if(handler){try{handler()}catch(exception){alert(exception.description)}}}this.isCtrl=false;this.isShift=false;this.isAlt=false;this.keyCode=null};this.handleKeypress=function(){alert("keypress")};this.activeKeyNevgator=function(){this.registKeyDown();this.registKeyUp()};this.registKeyDown=function(eventSrc,eventHandler){this.registKeyEventHandler("onkeydown",eventSrc,eventHandler)};this.registKeyUp=function(eventSrc,eventHandler){this.registKeyEventHandler("onkeyup",eventSrc,eventHandler)};this.registKeyEventHandler=function(eventName,eventSrc,eventHandler){if(!eventName){alert(lm("jsp.js.common.keyevent.needKeyEventName"));return}if(!eventSrc){eventSrc=document}if(!eventHandler){var handleName="handle";var firstChar=eventName.substring(2,3);handleName+=firstChar.toUpperCase()+eventName.substring(3,eventName.length);eventHandler=this[handleName]}eventSrc[eventName]=eventHandler.bind(this)}}function handleKeyEventDefault(){var cntrl=event.srcElement;var keyCode=event.keyCode;if(cntrl.tagName.toLowerCase()!="input"&&cntrl.tagName.toLowerCase()!="select"){return}var currTd=cntrl.parentElement;var cntrl=null;if(keyCode==KEY_ENTER||keyCode==KEY_RIGHT){cntrl=findNext(this,currTd,"r")}else{if(keyCode==KEY_LEFT){cntrl=findNext(this,currTd,"l")}else{if(keyCode==KEY_UP){cntrl=findNext(this,currTd,"u")}else{if(keyCode==KEY_DOWN){cntrl=findNext(this,currTd,"d")}}}}if(cntrl){try{selectLast(cntrl)}catch(e){cntrl.focus()}stopEventBuble()}}function findNext(tableObj,td,direct){var tr=td.parentElement;var currTr=null;var srcRowIndex=tr.rowIndex;var srcColIndex=td.cellIndex;var destRowIndex=-1;var destColIndex=-1;var rowCnt=tableObj.rows.length;var columCnt=tableObj.rows[0].cells.length;var lineIndex=srcRowIndex*columCnt+srcColIndex;if(direct=="r"){lineIndex++;destRowIndex=lineIndex/columCnt;destColIndex=lineIndex%columCnt}else{if(direct=="l"){lineIndex--;destRowIndex=lineIndex/columCnt;destColIndex=lineIndex%columCnt}else{if(direct=="d"){destRowIndex=srcRowIndex+1;destColIndex=srcColIndex}else{if(direct=="u"){destRowIndex=srcRowIndex-1;destColIndex=srcColIndex}}}}if(destRowIndex>=rowCnt||destRowIndex<1){return null}var destTd=null;try{currTr=tableObj.rows[destRowIndex];destTd=currTr.cells[destColIndex]}catch(e){return null}var colArray=tableObj.getElementsByTagName("COL");if(destTd.style.display=="none"){return findNext(tableObj,destTd,direct)}else{if(colArray){var colObj=null;var cellIndex=0;for(var i=0;i<colArray.length;i++){colObj=colArray[i];var span=colObj.span?colObj.span:1;if((cellIndex+span)>destTd.cellIndex){break}cellIndex+=span}if(colObj.style.display=="none"){return findNext(tableObj,destTd,direct)}}}var inputCntrls=destTd.getElementsByTagName("INPUT");if(!inputCntrls||inputCntrls.length<1){inputCntrls=destTd.getElementsByTagName("SELECT")}if(inputCntrls&&inputCntrls.length>0){for(var i=0,cnt=inputCntrls.length;i<cnt;i++){var cntrl=inputCntrls[i];if(cntrl.tagName.toLowerCase()=="select"&&!cntrl.disabled&&cntrl.style.display!="none"){if(cntrl.style.visibility=="hidden"){cntrl.style.visibility="visible"}setPointer(currTr,"select");return cntrl}if(cntrl.tagName.toLowerCase()=="input"){if(cntrl.type=="text"&&!cntrl.disabled&&!cntrl.readOnly&&cntrl.style.display!="none"){if(cntrl.style.visibility=="hidden"){cntrl.style.visibility="visible"}setPointer(currTr,"select");return cntrl}}}return findNext(tableObj,destTd,direct)}else{return findNext(tableObj,destTd,direct)}};