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
		<script language="javascript" src="javascript/winopen/winopenm.js"></script>
	</head>
	<body>
		<table width="100%">
			<tr>
				<td>
					<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--��������--��Ч������ѯ </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" class="SUBMIT_STYLE1" value="��ӡ" name="B1">
					<input type="button" class="BUTTON_STYLE1" value="����" onclick="history.back();">
				</td>
			</tr>
		</table>
		<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
			cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
			<tr class="TR_STYLE1">
				<td width="8%" class="TD_STYLE1">
					ְλ����
				</td>
				<td width="17%" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanMajorKindName"/>
				</td>
				<td width="9%" class="TD_STYLE1">
					ְλ����
				</td>
				<td width="17%" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanMajorName"/>
				</td>
				<td width="8%" class="TD_STYLE1">
					��Ƹ����
				</td>
				<td colspan="2" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.engageType"/>
				</td>
				<td width="13%" rowspan="6">
					<html:img src="${engageresumeForm.item.humanPicture}"></html:img>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanName"/>
				</td>
				<td class="TD_STYLE1">
					�Ա�
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanSex"/>
				</td>
				<td class="TD_STYLE1">
					E-MAIL
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanEmail"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					�绰
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanTelephone"/>
				</td>
				<td class="TD_STYLE1">
					��ͥ�绰
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanHomephone"/>
				</td>
				<td class="TD_STYLE1">
					�ֻ�
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanMobilephone"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					סַ
				</td>
				<td colspan="3" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanAddress"/>
				</td>
				<td class="TD_STYLE1">
					�ʱ�
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanPostcode"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanNationality"/>
				</td>
				<td class="TD_STYLE1">
					������
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanBirthplace"/>
				</td>
				<td class="TD_STYLE1">
					����
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanBirthday"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanRace"/>
				</td>
				<td class="TD_STYLE1">
					�ڽ�����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanReligion"/>
				</td>
				<td class="TD_STYLE1">
					������ò
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanParty"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					���֤����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanIdcard"/>
				</td>
				<td class="TD_STYLE1">
					����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanAge"/>
				</td>
				<td class="TD_STYLE1" width="8%">
					��ҵѧУ
				</td>
				<td width="13%" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanCollege"/>
				</td>
				<td width="11%" class="TD_STYLE1">
					ѧ��
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanEducatedDegree"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					��������
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanEducatedYears"/>
				</td>
				<td class="TD_STYLE1">
					ѧ��רҵ
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanEducatedMajor"/>
				</td>
				<td class="TD_STYLE1">
					н��Ҫ��
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.demandSalaryStandard"/>
				</td>
				<td class="TD_STYLE1">
					ע��ʱ��
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.registTime"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					�س�
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanSpecility"/>
				</td>
				<td class="TD_STYLE1">
					����
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanHobby"/>
				</td>
				<td class="TD_STYLE1">
					�Ƽ���
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.checker"/>
				</td>
				<td class="TD_STYLE1">
					�Ƽ�ʱ��
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.str_checkTime"/>
				</td>
			</tr>
			<tr class="TR_STYLE1">
				<td class="TD_STYLE1">
					��������
				</td>
				<td class="TD_STYLE2" colspan="7">
					<a href="javascript:winopenm('query.jsp?filename=${engageresumeForm.item.attachmentName }')">${engageresumeForm.item.attachmentName }</a>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1" height="65">
					��������
				</td>
				<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="engageresumeForm" property="item.humanHistoryRecords"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1" height="65">
					��ע
				</td>
				<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="engageresumeForm" property="item.remark"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1" height="65">
					ɸѡ�Ƽ����
				</td>
				<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="engageresumeForm" property="item.recomandation"/>
				</td>
			</tr>
		</table>
	</body>
</html>
