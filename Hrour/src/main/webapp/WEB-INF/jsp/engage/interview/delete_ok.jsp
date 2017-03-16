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
		function reback()
		{
			document.forms[0].action = document.forms[0].action + "?operate=list";
			document.forms[0].submit();
		}
</script>
</head>

<body>
<html:form action="engageinterview.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">您正在做的业务是：人力资源--招聘管理--面试管理--面试筛选  </font></td>
  </tr>
  <tr>
    <td align="right">
      <div align="left">删除成功，谢谢！
    </div></td>
    <td align="right"><input type="button" value="返回" class="BUTTON_STYLE1" onclick="javascript:reback();"></td>
  </tr>
  </table>
  </html:form>
</body>
</html>