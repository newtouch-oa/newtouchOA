<%@ page language="java" pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�ϴ�</title>
<style type="text/css">
 body {font:12px Tahoma;font-family:"����";margin:0px;background:#f3f8fb;}
 body,form,ul,li,p,dl,dd,dt,h,td,th,h3{padding:0;font-size:12px;color:#444;}
 .button {border:#7F9DB9 1px solid; height:18px;}
 .input  {border:#7F9DB9 1px solid; height:18px;}
 .table  {width:250px;}
</style>
<script type="text/javascript">
function checkform(){
  var strs=document.upform.file.value;
  if(strs==""){
      alert("��ѡ��Ҫ�ϴ���ͼƬ!");
	  return false;     
  }  
  var n1=strs.lastIndexOf('.')+1;
  var fileExt=strs.substring(n1,n1+3).toLowerCase()
  if(fileExt!="jpg"&&fileExt!="gif"&&fileExt!="jpeg"&&fileExt!="bmp"&&fileExt!="png"){
	  alert('ϵͳ��֧��jpg��gif��bmp��png��׺ͼƬ�ϴ�!');
	  return false;
  }
}
</script>
</head>
<body>
<form action="upfile.jsp" method="post" enctype="multipart/form-data" name="upform" onSubmit="return checkform();">
<input name="file" id="file" type="file" class="input" />
<input name="Submit" type="submit" class="button" value="�� ��" />
</form>
</body>
</html>