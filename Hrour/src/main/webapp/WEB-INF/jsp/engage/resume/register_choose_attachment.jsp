<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="table.css" type="text/css">
		<link rel="stylesheet" type="text/css" media="all"
			href="javascript/calendar/calendar-win2k-cold-1.css">
		<script type="text/javascript" src="javascript/calendar/cal.js"></script>
		<script type="text/javascript" src="javascript/comm/comm.js"></script>
	
</head>
<body>
<html:form action="engageresume.do" enctype="multipart/form-data">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">您正在做的业务是：人力资源--招聘管理--简历管理--简历登记</font></td>
  </tr>
  <tr>
    <td width="65%">提交成功，如需上传附件，请选择上传(word文档、txt文档、pdf文档、jpg图片等，最大5.0MB)
	<input type="file" class="FILE_STYLE1" name="theAttach" width="100%"></td>
    <td width="41%" align="right">
    <input type="button" value="上传附件" class="BUTTON_STYLE1" onclick="javascript:doUpLoadAttach();">
	<input type="button" value="上传照片" class="BUTTON_STYLE1" onclick="javascript:toUpLoadPhoto();">
      <input type="button" value="完成" class="BUTTON_STYLE1" onclick="javascript:finish();"></td>
  </tr>
  
  </table>

</html:form>
</body>
</html>
