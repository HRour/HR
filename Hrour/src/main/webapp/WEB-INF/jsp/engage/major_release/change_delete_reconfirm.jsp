<%@ page contentType="text/html; charset=gbk" language="java"
	errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="table.css" type="text/css">
<script type="text/javascript">
	function doDelete(id)
	{
		document.forms[0].action = document.forms[0].action + "?operate=doDelete&id="+id;
		document.forms[0].submit();
	}
</script>
</head>

<body>
<html:form action="engagemajorrelease.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">您正在做的业务是：人力资源--招聘管理--职位发布管理--职位发布变更 </font></td>
  </tr>
  <tr>
    <td align="right">
      <div align="left">您确认删除 ${emr.firstKindName }/${emr.majorName }吗？ 
    </div></td>
    <td align="right"><input type="button" class="SUBMIT_STYLE1" value="确认" onclick="javascript:doDelete('${emr.mreId}');">
    <input type="button" class="BUTTON_STYLE1" value="返回" onclick="history.back()"></td>
  </tr>
  </table>
  </html:form>
</body>
</html>