<%@ page contentType="text/html; charset=gbk" language="java"
	errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="table.css" type="text/css">
		<script type="text/javascript" src="javascript/comm/comm.js"></script>
		<script type="text/javascript" src="javascript/comm/time.js"></script>
		<script language="javascript" src="javascript/winopen/winopenm.js"></script>
	</head>

	<body>
		<html:form action="engageresume.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--¼�ù���--¼������ </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<html:radio property="item.passResult" value="�ͷż���"
							name="engageresumeForm">�ͷż���</html:radio>
						<html:radio property="item.passResult" value="����¼��"
							name="engageresumeForm">����¼��</html:radio>
						<input type="button" value="ȷ��" class="BUTTON_STYLE1"
							onclick="javascript:doCheck('${engageinterviewForm.item.einId }');">
						<input type="button" value="����" class="BUTTON_STYLE1"
							onclick="history.back();">
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
						<bean:write name="er" property="humanMajorKindName" />
					</td>
					<td width="9%" class="TD_STYLE1">
						ְλ����
						<!-- 	<html:hidden property="item.humanMajorName"
							value="${er.humanMajorName}" />
						<html:hidden property="item.humanMajorId"
							value="${er.humanMajorId}" />  -->
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorName" />
					</td>
					<td width="8%" nowrap class="TD_STYLE1">
						��Ƹ����
					</td>
					<td colspan="2" class="TD_STYLE2">
						<bean:write name="er" property="engageType" />
					</td>
					<td width="13%" rowspan="6">
						<a
							href="javascript:winopenm('query.jsp?filename=${engageresumeForm.item.attachmentName }')"><html:img
								src="${er.humanPicture}" />
						</a>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanName" />
					</td>
					<td class="TD_STYLE1">
						�Ա�
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanSex" />
					</td>
					<td class="TD_STYLE1">
						E-MAIL
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanEmail" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						�绰
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanTelephone" />
					</td>
					<td class="TD_STYLE1">
						��ͥ�绰
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHomephone" />
					</td>
					<td class="TD_STYLE1">
						�ֻ�
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanMobilephone" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						סַ
					</td>
					<td colspan="3" class="TD_STYLE2">
						<bean:write name="er" property="humanAddress" />
					</td>
					<td class="TD_STYLE1">
						�ʱ�
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanPostcode" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanNationality" />
					</td>
					<td class="TD_STYLE1">
						������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanBirthplace" />
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="str_humanBirthday" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanRace" />
					</td>
					<td class="TD_STYLE1">
						�ڽ�����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanReligion" />
					</td>
					<td class="TD_STYLE1">
						������ò
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanParty" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						���֤����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanIdcard" />
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanAge" />
					</td>
					<td class="TD_STYLE1" width="8%">
						��ҵѧУ
					</td>
					<td width="13%" class="TD_STYLE2">
						<bean:write name="er" property="humanCollege" />
					</td>
					<td width="11%" nowrap class="TD_STYLE1">
						ѧ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedDegree" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedYears" />
					</td>
					<td class="TD_STYLE1">
						ѧ��רҵ
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedMajor" />
					</td>
					<td class="TD_STYLE1">
						н��Ҫ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="demandSalaryStandard" />
					</td>
					<td class="TD_STYLE1">&nbsp;
					</td>
					<td class="TD_STYLE2">&nbsp;
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						�س�
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanSpecility" />
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHobby" />
					</td>
					<td class="TD_STYLE1">
						�Ƽ���
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="checker" />
					</td>
					<td class="TD_STYLE1">
						�Ƽ�ʱ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="str_checkTime" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2" colspan="7">
						<a href="javascript:winopenm('query.jsp?filename=${er.attachmentName }')">
							<bean:write name="er" property="attachmentName" />
						</a>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						��������
					</td>
					<td class="TD_STYLE2" colspan="7">

						<bean:write name="er" property="humanHistoryRecords" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						��ע
					</td>
					<td class="TD_STYLE2" colspan="7">

						<bean:write name="er" property="remark" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						ɸѡ�Ƽ����
					</td>
					<td class="TD_STYLE2" colspan="7">

						<bean:write name="er" property="recomandation" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						���Դ���
					</td>
					<td class="TD_STYLE2">
						��
						<bean:write name="lastEI" property="interviewAmount" />
					</td>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="imageDegree" />
					</td>
					<td class="TD_STYLE1">
						�ڲ�����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="nativeLanguageDegree" />
					</td>
					<td class="TD_STYLE1">
						�����������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="foreignLanguageDegree" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						Ӧ������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="responseSpeedDegree" />
					</td>
					<td class="TD_STYLE1">
						EQ
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="eqDegree" />
					</td>
					<td class="TD_STYLE1">
						IQ
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="iqDegree" />
					</td>
					<td class="TD_STYLE1">
						�ۺ�����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="multiQualityDegree" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="register" />
					</td>
					<td class="TD_STYLE1">
						����ʱ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="registeTime" />
					</td>
					<td class="TD_STYLE1">
						����ɸѡ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="checker" />
					</td>
					<td class="TD_STYLE1">
						����ɸѡʱ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="checkTime" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						¼������������
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engageresumeForm"
							property="item.pass_checkComment" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>
