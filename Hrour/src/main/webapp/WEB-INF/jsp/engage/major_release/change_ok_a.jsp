<%@ page contentType="text/html; charset=gbk" language="java"
	errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="table.css" type="text/css">
<script type="text/javascript">
		function reback()
		{
			document.forms[0].action = document.forms[0].action + "?operate=toEdit";
			document.forms[0].submit();
		}
</script>
</head>

<body>
<html:form action="engagemajorrelease.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--ְλ��������--ְλ������� </font></td>
  </tr>
  <tr>
    <td align="right">
      <div align="left">�޸ĳɹ���лл�� 
    </div></td>
    <td align="right"><input type="button" value="����" class="BUTTON_STYLE1" onclick="javascript:reback();"></td>
  </tr>
  </table>
  </html:form>
</body>
</html>