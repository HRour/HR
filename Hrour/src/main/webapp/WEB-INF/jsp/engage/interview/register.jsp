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
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--面试管理--面试结果登记 </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" value="提交" class="BUTTON_STYLE1"
							onclick="javascript:doAdd('${er.resId}');">
						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back();">
					</td>
				</tr>
			</table>

			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				<tr class="TR_STYLE1">
					<td width="8%" class="TD_STYLE1">
						职位分类<html:hidden property="item.humanMajorKindName" value="${er.humanMajorKindName}"/>
						<html:hidden property="item.humanMajorKindId" value="${er.humanMajorKindId}"/>
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorKindName"/>
					</td>
					<td width="9%" class="TD_STYLE1">
						职位名称<html:hidden property="item.humanMajorName" value="${er.humanMajorName}"/>
						<html:hidden property="item.humanMajorId" value="${er.humanMajorId}"/>
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorName"/>
					</td>
					<td width="8%" nowrap class="TD_STYLE1">
						招聘类型
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
						姓名<html:hidden property="item.humanName" value="${er.humanName}"/>
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanName"/>
					</td>
					<td class="TD_STYLE1">
						性别
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
						电话
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanTelephone"/>
					</td>
					<td class="TD_STYLE1">
						家庭电话
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHomephone"/>
					</td>
					<td class="TD_STYLE1">
						手机
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanMobilephone"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						住址
					</td>
					<td colspan="3" class="TD_STYLE2">
						<bean:write name="er" property="humanAddress"/>
					</td>
					<td class="TD_STYLE1">
						邮编
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanPostcode"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						国籍
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanNationality"/>
					</td>
					<td class="TD_STYLE1">
						出生地
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanBirthplace"/>
					</td>
					<td class="TD_STYLE1">
						生日
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="str_humanBirthday"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						民族
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanRace"/>
					</td>
					<td class="TD_STYLE1">
						宗教信仰
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanReligion"/>
					</td>
					<td class="TD_STYLE1">
						政治面貌
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanParty"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						身份证号码
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanIdcard"/>
					</td>
					<td class="TD_STYLE1">
						年龄
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanAge"/>
					</td>
					<td class="TD_STYLE1" width="8%">
						毕业学校
					</td>
					<td width="13%" class="TD_STYLE2">
						<bean:write name="er" property="humanCollege"/>
					</td>
					<td width="11%" nowrap class="TD_STYLE1">
						学历
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedDegree"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						教育年限
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedYears"/>
					</td>
					<td class="TD_STYLE1">
						学历专业
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedMajor"/>
					</td>
					<td class="TD_STYLE1">
						薪酬要求
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="demandSalaryStandard"/>
					</td>
					<td class="TD_STYLE1">
						注册时间
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="registTime"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						特长
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanSpecility"/>
					</td>
					<td class="TD_STYLE1">
						爱好
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHobby"/>
					</td>
					<td class="TD_STYLE1">
						推荐人
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="checker"/>
					</td>
					<td class="TD_STYLE1">
						推荐时间
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="str_checkTime"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						个人履历
					</td>
					<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="er" property="humanHistoryRecords"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						备注
					</td>
					<td class="TD_STYLE2" colspan="7">
						
						<bean:write name="er" property="remark"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						推荐意见
					</td>
					<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="er" property="recomandation"/>
				</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						面试次数
					</td>
					<td class="TD_STYLE2"><html:hidden property="item.interviewAmount" value="${engageinterviewForm.item.interviewAmount}"/>
						第
						${engageinterviewForm.item.interviewAmount}
						次面试
					</td>
					<td class="TD_STYLE1">
						形象评价
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.imageDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						口才评价
					</td>
					<td class="TD_STYLE2">
						<html:select property="item.nativeLanguageDegree" styleClass="SELECT_STYLE1">
							<html:option value="A">A</html:option>
							<html:option value="B">B</html:option>
							<html:option value="C">C</html:option>
						</html:select>
					</td>
					<td class="TD_STYLE1">
						外语口语能力
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
						应变能力
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
						综合素质
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
						面试人
					</td>
					<td class="TD_STYLE2">
						<html:text name="engageinterviewForm" property="item.register" styleClass="INPUT_STYLE2"/>
					</td>
					<td class="TD_STYLE1">
						面试时间
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
						面试评价
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
