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
		<script type="text/javascript" src="javascript/comm/time.js"></script>
	</head>
	<body>
		<table width="100%">
			<tr>
				<td>
					<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--��Ƹ����������--�����ѯ </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" class="BUTTON_STYLE1" value="����" onclick="history.back();">
				</td>
			</tr>
		</table>
		<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
			cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
			<tr class="TR_STYLE1">
				<td width="8%" nowrap class="TD_STYLE1">
						����I������
				</td>
				<td width="14%" class="TD_STYLE2">
					<bean:write name="engagesubjectsForm" property="item.firstKindName"/>
				</td>
				<td width="8%" nowrap class="TD_STYLE1">
						����II������
				</td>
				<td width="14%" class="TD_STYLE2">
					<bean:write name="engagesubjectsForm" property="item.secondKindName"/>
				</td>
				<td width="10%" nowrap class="TD_STYLE1">
						�Ǽ���
				</td>
				<td width="14%" class="TD_STYLE2">
					<bean:write name="engagesubjectsForm" property="item.register"/>
				</td>
				<td width="10%" class="TD_STYLE1">
						�Ǽ�ʱ��
				</td>
				<td width="14%" class="TD_STYLE2">
					<bean:write name="engagesubjectsForm" property="item.registTime"/>
				</td>
			</tr>
			<tr>
					<td class="TD_STYLE1">
						���
					</td>
					<td class="TD_STYLE2" colspan="7" height="68">
						<bean:write name="engagesubjectsForm" property="item.content"/>
					</td>
			</tr>
			<tr>
					<td class="TD_STYLE1">
						��a
					</td>
					<td class="TD_STYLE2" colspan="7">
						<bean:write name="engagesubjectsForm" property="item.keyA"/>
					</td>
				</tr>
			<tr>
					<td class="TD_STYLE1">
						��b
					</td>
					<td class="TD_STYLE2" colspan="7">
						<bean:write name="engagesubjectsForm" property="item.keyB"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��c
					</td>
					<td class="TD_STYLE2" colspan="7">
						<bean:write name="engagesubjectsForm" property="item.keyC"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��d
					</td>
					<td class="TD_STYLE2" colspan="7">
						<bean:write name="engagesubjectsForm" property="item.keyD"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��e
					</td>
					<td class="TD_STYLE2" colspan="7">
						<bean:write name="engagesubjectsForm" property="item.keyE"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��ȷ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="engagesubjectsForm" property="item.correctKey"/>
					</td>
					<td class="TD_STYLE1">
						�������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="engagesubjectsForm" property="item.derivation"/>
					</td>
					<td class="TD_STYLE1">
						
					</td>
					<td class="TD_STYLE2">
						
					</td>
					<td class="TD_STYLE1">
						
					</td>
					<td class="TD_STYLE2">
						
					</td>
				</tr>
		</table>
	</body>
</html>
