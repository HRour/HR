<%@ page contentType="text/html; charset=gb2312" language="java"
	 errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="table.css" type="text/css">
		<link rel="stylesheet" type="text/css" media="all"
			href="javascript/calendar/calendar-win2k-cold-1.css">
		<script type="text/javascript" src="javascript/calendar/cal.js"></script>
		<script type="text/javascript" src="javascript/comm/comm.js"></script>
		<script type="text/javascript">
			function toChange()
			{
				document.forms[0].action = document.forms[0].action + "?operate=list&param=change";
				document.forms[0].submit();
			}
		</script>
</head>

<body>
<html:form action="engagesubjects.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">您正在做的业务是：人力资源--招聘管理--招聘考试题库管理--试题变更  </font></td>
  </tr>
  <tr>
    <td align="right">
      <div align="left">试题变更成功，请返回。
    </div></td>
    <td align="right"><input type="button" class="BUTTON_STYLE1" value="返回" onclick="javascript:toChange();"></td>
  </tr>
  </table>
  </html:form>
</body>
</html>