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
			function doStart()
			{
				document.forms[0].action=document.forms[0].action+"?operate=list&method=interview&checkStatus=1&interviewStatus=0&passStatus=0";
				document.forms[0].submit();
			}
		</script>
	</head>

<body>
<html:form action="engageresume.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--���Թ���--���Խ���Ǽ� 
  </font></td>
  </tr>
  <tr>
    <td>�Ǽǳɹ����뷵�أ�</td>
    <td align="right"><input type="button" class="BUTTON_STYLE1" value="����" onclick="doStart();"></td>
  </tr>
</table>
</html:form>
</body>
</html>