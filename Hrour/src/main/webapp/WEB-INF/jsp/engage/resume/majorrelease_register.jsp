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
					<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--简历管理--简历登记 </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="提交" class="BUTTON_STYLE1"
						onclick="javascript:toUpLoadPhoto();">
					<input type="button" value="返回" class="BUTTON_STYLE1" onclick="history.back()">
				</td>
			</tr>
		</table>
		<html:form action="engageresume.do">
			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				<tr class="TR_STYLE1">
					<td width="8%" nowrap class="TD_STYLE1">
						职位分类
					</td>
					<td width="17%"  class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanMajorKindName" 
						value="${EngageMajorRelease.majorKindId}/${EngageMajorRelease.majorKindName}" readonly="true"
						styleClass="INPUT_STYLE2"/>
					</td>
					<td width="9%" class="TD_STYLE1">
						职位名称
					</td>
					<td width="17%"  class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanMajorName" 
						value="${EngageMajorRelease.majorId}/${EngageMajorRelease.majorName}" readonly="true"
						styleClass="INPUT_STYLE2"/>
					</td>
					<td width="8%"  class="TD_STYLE1">
						招聘类型
					</td>
					<td colspan="2">
						<html:select property="item.engageType" styleClass="SELECT_STYLE1">
							<html:option value="社会招聘">社会招聘</html:option>
							<html:option value="校园招聘">校园招聘</html:option>
						</html:select>
					</td>
					<td width="13%" rowspan="6"></td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						姓名
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanName"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						性别
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.humanSex" styleClass="SELECT_STYLE1">
							<html:option value="男">男</html:option>
							<html:option value="女">女</html:option>
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
						电话
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanTelephone"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						家庭电话
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanHomephone"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						手机
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm"
							property="item.humanMobilephone" styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						住址
					</td>
					<td colspan="3" class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanAddress"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						邮编
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm" property="item.humanPostcode"
							styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						国籍
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanNationality">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("国籍");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						出生地
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanBirthplace"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						生日
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:text name="engageresumeForm" property="item.str_humanBirthday"
							styleClass="INPUT_STYLE2" styleId="date_start"  />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						民族
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1" property="item.humanRace">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("民族");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						宗教信仰
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanReligion">
							<%
										vector = (Vector) ((HashMap) request.getAttribute("map"))
										.get("宗教信仰");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						政治面貌
					</td>
					<td class="TD_STYLE2" colspan="2">
						<html:select styleClass="SELECT_STYLE1" property="item.humanParty">
							<%
										vector = (Vector) ((HashMap) request.getAttribute("map"))
										.get("政治面貌");
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
						身份证号码
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanIdcard"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						年龄
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanAge"
							styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1" width="8%">
						毕业学校
					</td>
					<td width="13%" class="TD_STYLE2">
						<html:text name="engageresumeForm" property="item.humanCollege"
							styleClass="INPUT_STYLE2" />
					</td>
					<td width="11%" nowrap class="TD_STYLE1">
						学历
					</td>
					<td>
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanEducatedDegree">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("学历");
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
						教育年限
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanEducatedYears">
							<%
										vector = (Vector) ((HashMap) request.getAttribute("map"))
										.get("教育年限");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						学历专业
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanEducatedMajor">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("专业");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						薪酬要求
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageresumeForm"
							property="item.demandSalaryStandard" styleClass="INPUT_STYLE2" />
					</td>
					<td class="TD_STYLE1">
						注册时间
					</td>
					<td class="TD_STYLE1">
						<html:text name="engageresumeForm" property="item.str_registTime"
							readonly="true" styleClass="INPUT_STYLE2" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						特长
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1"
							property="item.humanSpecility">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("特长");
								pageContext.setAttribute("vector", vector);
							%>
							<logic:iterate id="v" name="vector">
								<html:option value="${v}">${v}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						爱好
					</td>
					<td class="TD_STYLE2">
						<html:select styleClass="SELECT_STYLE1" property="item.humanHobby">
							<%
								vector = (Vector) ((HashMap) request.getAttribute("map")).get("爱好");
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
						个人履历
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engageresumeForm"
							property="item.humanHistoryRecords" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						备注
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
