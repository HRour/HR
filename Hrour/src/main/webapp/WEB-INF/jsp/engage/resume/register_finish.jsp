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

</head>
<body>
<form method="post" action="engageresume.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--��������--�����Ǽ�</font></td>
  </tr>
  <tr>
    <td width="65%">��Ƭ�͸����Ѿ��ϴ���ϡ�������ģ��������ϴ���������ѡ��"���"</td>
    <td width="41%" align="right">
    <input type="button" value="�ϴ���Ƭ" class="BUTTON_STYLE1" onclick="javascrip:toUpLoadPhoto();">
	<input type="button" value="�ϴ�����" class="BUTTON_STYLE1" onclick="javascrip:toUpLoadAttach();">
      <input type="button" value="���" class="BUTTON_STYLE1" onclick="javascrip:finish();"></td>
  </tr>
  </table>

</form>
</body>
</html>
