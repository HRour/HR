<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*" errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%
Vector vector;
%>
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
					<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--��������--�����Ǽ� </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="�ύ" class="BUTTON_STYLE1"
						onclick="javascript:toUpLoadPhoto();">
					<input type="button" value="����" class="BUTTON_STYLE1" onclick="history.back()">
				</td>
			</tr>
		</table>
		<html:form action="engageresume.do">
			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				<tr class="TR_STYLE1">
					<td width="8%" nowrap class="TD_STYLE1">
						ְλ����
					</td>
					<td width="17%"  class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanMajorKindName" 
						value="${EngageMajorRelease.majorKindId}/${EngageMajorRelease.majorKindName}" readonly="true"
						styleClass="INPUT_STYLE2"/>
					</td>
					<td width="9%" class="TD_STYLE1">
						ְλ����
					</td>
					<td width="17%"  class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanMajorName" 
						value="${EngageMajorRelease.majorId}/${EngageMajorRelease.majorName}" readonly="true"
						styleClass="INPUT_STYLE2"/>
					</td>
					<td width="8%"  class="TD_STYLE1">
						��Ƹ����
					</td>
					<td colspan="2">
						<html:select property="item.engageType" styleClass="SELECT_STYLE1">
							<html:option value="�����Ƹ">�����Ƹ</html:option>
							<html:option value="У԰��Ƹ">У԰��Ƹ</html:option>
						</html:select>
					</td>
					<td width="13%" rowspan="6"></td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanName"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						�Ա�
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.humanSex" styleClass="SELECT_STYLE1">
							<html:option value="��">��</html:option>
							<html:option value="Ů">Ů</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						E-MAIL
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm" property="item.humanEmail"
							styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						�绰
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanTelephone"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						��ͥ�绰
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanHomephone"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						�ֻ�
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm"
							property="item.humanMobilephone" styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						סַ
					</td>
					<td colspan="3" class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanAddress"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						�ʱ�
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm" property="item.humanPostcode"
							styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanNationality">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("����");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						������
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanBirthplace"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm" property="item.str_humanBirthday"
							styleClass="INPUT_STYLE2" styleId="date_start"  />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1" property="item.humanRace">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("����");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						�ڽ�����
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanReligion">
							<%
										vector = (Vector) ((HashMap) request.getAttribute("map"))
										.get("�ڽ�����");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						������ò
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:select styleClass="SELECT_STYLE1" property="item.humanParty">
							<%
										vector = (Vector) ((HashMap) request.getAttribute("map"))
										.get("������ò");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						���֤����
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanIdcard"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanAge"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1" width="8%">
						��ҵѧУ
					</td>
					<td width="13%" class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanCollege"
							styleClass="INPUT_STYLE2" />
					</td>
					<td width="11%" nowrap class="TD_STYLE1">
						ѧ��
					</td>
					<td>
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanEducatedDegree">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("ѧ��");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanEducatedYears">
							<%
										vector = (Vector) ((HashMap) request.getAttribute("map"))
										.get("��������");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						ѧ��רҵ
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanEducatedMajor">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("רҵ");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						н��Ҫ��
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm"
							property="item.demandSalaryStandard" styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						ע��ʱ��
					</td>
					<td class="TD_STYLE1">
						<html:text name="engageresumeForm" property="item.str_registTime"
							readonly="true" styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						�س�
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanSpecility">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("�س�");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1" property="item.humanHobby">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("����");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
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
					<td class="TD_STYLE1">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��������
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engageresumeForm"
							property="item.humanHistoryRecords" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						��ע
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engageresumeForm" property="item.remark"
							styleClass="TEXTAREA_STYLE1" rows="4" />
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
