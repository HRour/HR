<%@ page contentType="text/html; charset=gbk" language="java"
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
		<script type="text/javascript">
			function doAdd(id)
			{
				document.forms[0].action=document.forms[0].action+"?operate=doAdd&id="+id;
				document.forms[0].submit();
			}
		</script>		
	</head>

	<body>
		<html:form action="engageinterview.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--���Թ���--���Խ���Ǽ� </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" value="�ύ" class="BUTTON_STYLE1"
							onclick="javascript:doAdd('${er.resId}');">
						<input type="button" value="����" class="BUTTON_STYLE1"
							onclick="history.back();">
					</td>
				</tr>
			</table>

			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				<tr class="TR_STYLE1">
					<td width="8%" class="TD_STYLE1">
						ְλ����<html:hidden property="item.humanMajorKindName" value="${er.humanMajorKindName}"/>
						<html:hidden property="item.humanMajorKindId" value="${er.humanMajorKindId}"/>
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorKindName"/>
					</td>
					<td width="9%" class="TD_STYLE1">
						ְλ����<html:hidden property="item.humanMajorName" value="${er.humanMajorName}"/>
						<html:hidden property="item.humanMajorId" value="${er.humanMajorId}"/>
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorName"/>
					</td>
					<td width="8%" nowrap class="TD_STYLE1">
						��Ƹ����
					</td>
					<td colspan="2" class="TD_STYLE2">
						<bean:write name="er" property="engageType"/>
					</td>
					<td width="13%" rowspan="6">
						<html:img src="${er.humanPicture}" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����<html:hidden property="item.humanName" value="${er.humanName}"/>
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanName"/>
					</td>
					<td class="TD_STYLE1">
						�Ա�
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanSex"/>
					</td>
					<td class="TD_STYLE1">
						E-MAIL
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanEmail"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						�绰
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanTelephone"/>
					</td>
					<td class="TD_STYLE1">
						��ͥ�绰
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHomephone"/>
					</td>
					<td class="TD_STYLE1">
						�ֻ�
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanMobilephone"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						סַ
					</td>
					<td colspan="3" class="TD_STYLE2">
						<bean:write name="er" property="humanAddress"/>
					</td>
					<td class="TD_STYLE1">
						�ʱ�
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanPostcode"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanNationality"/>
					</td>
					<td class="TD_STYLE1">
						������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanBirthplace"/>
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="str_humanBirthday"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanRace"/>
					</td>
					<td class="TD_STYLE1">
						�ڽ�����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanReligion"/>
					</td>
					<td class="TD_STYLE1">
						������ò
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanParty"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						���֤����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanIdcard"/>
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanAge"/>
					</td>
					<td class="TD_STYLE1" width="8%">
						��ҵѧУ
					</td>
					<td width="13%" class="TD_STYLE2">
						<bean:write name="er" property="humanCollege"/>
					</td>
					<td width="11%" nowrap class="TD_STYLE1">
						ѧ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedDegree"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedYears"/>
					</td>
					<td class="TD_STYLE1">
						ѧ��רҵ
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedMajor"/>
					</td>
					<td class="TD_STYLE1">
						н��Ҫ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="demandSalaryStandard"/>
					</td>
					<td class="TD_STYLE1">
						ע��ʱ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="registTime"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						�س�
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanSpecility"/>
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHobby"/>
					</td>
					<td class="TD_STYLE1">
						�Ƽ���
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="checker"/>
					</td>
					<td class="TD_STYLE1">
						�Ƽ�ʱ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="str_checkTime"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						��������
					</td>
					<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="er" property="humanHistoryRecords"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						��ע
					</td>
					<td class="TD_STYLE2" colspan="7">
						
						<bean:write name="er" property="remark"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						�Ƽ����
					</td>
					<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="er" property="recomandation"/>
				</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						���Դ���
					</td>
					<td class="TD_STYLE2"><html:hidden property="item.interviewAmount" value="${engageinterviewForm.item.interviewAmount}"/>
						��
						${engageinterviewForm.item.interviewAmount}
						������
					</td>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.imageDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						�ڲ�����
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.nativeLanguageDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						�����������
					</td>
					<td class="TD_STYLE1">
						<html:select property="item.foreignLanguageDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						Ӧ������
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.responseSpeedDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						EQ
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.eqDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						IQ
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.iqDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						�ۺ�����
					</td>
					<td class="TD_STYLE1">
						<html:select property="item.multiQualityDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						������
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageinterviewForm" property="item.register" styleClass="INPUT_STYLE2"/>
					</td>
					<td class="TD_STYLE1">
						����ʱ��
					</td>
					<td class="TD_STYLE2">
						<bean:write name="engageinterviewForm" property="item.str_registeTime"/>
					</td>
					<td class="TD_STYLE1">
						&nbsp;
					</td>
					<td class="TD_STYLE2">
						&nbsp;
					</td>
					<td class="TD_STYLE1">
						&nbsp;
					</td>
					<td class="TD_STYLE2">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engageinterviewForm"
							property="item.interviewComment" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
			</table>
		</html:form>
	</body>
</html>

<script type="text/javascript">
Calendar.setup ({inputField : "date_start", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_start", singleClick : true, step : 1});
Calendar.setup ({inputField : "date_end", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_end", singleClick : true, step : 1});
</script>
