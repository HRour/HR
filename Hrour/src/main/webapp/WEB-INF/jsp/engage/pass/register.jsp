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
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--录用管理--录用申请 </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<html:radio property="item.passResult" value="释放简历"
							name="engageresumeForm">释放简历</html:radio>
						<html:radio property="item.passResult" value="申请录用"
							name="engageresumeForm">申请录用</html:radio>
						<input type="button" value="确认" class="BUTTON_STYLE1"
							onclick="javascript:doCheck('${engageinterviewForm.item.einId }');">
						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back();">
					</td>
				</tr>
			</table>

			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				<tr class="TR_STYLE1">
					<td width="8%" class="TD_STYLE1">
						职位分类
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorKindName" />
					</td>
					<td width="9%" class="TD_STYLE1">
						职位名称
						<!-- 	<html:hidden property="item.humanMajorName"
							value="${er.humanMajorName}" />
						<html:hidden property="item.humanMajorId"
							value="${er.humanMajorId}" />  -->
					</td>
					<td width="17%" class="TD_STYLE2">
						<bean:write name="er" property="humanMajorName" />
					</td>
					<td width="8%" nowrap class="TD_STYLE1">
						招聘类型
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
						姓名
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanName" />
					</td>
					<td class="TD_STYLE1">
						性别
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
						电话
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanTelephone" />
					</td>
					<td class="TD_STYLE1">
						家庭电话
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHomephone" />
					</td>
					<td class="TD_STYLE1">
						手机
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanMobilephone" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						住址
					</td>
					<td colspan="3" class="TD_STYLE2">
						<bean:write name="er" property="humanAddress" />
					</td>
					<td class="TD_STYLE1">
						邮编
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanPostcode" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						国籍
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanNationality" />
					</td>
					<td class="TD_STYLE1">
						出生地
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanBirthplace" />
					</td>
					<td class="TD_STYLE1">
						生日
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="str_humanBirthday" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						民族
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanRace" />
					</td>
					<td class="TD_STYLE1">
						宗教信仰
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanReligion" />
					</td>
					<td class="TD_STYLE1">
						政治面貌
					</td>
					<td class="TD_STYLE2" colspan="2">
						<bean:write name="er" property="humanParty" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						身份证号码
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanIdcard" />
					</td>
					<td class="TD_STYLE1">
						年龄
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanAge" />
					</td>
					<td class="TD_STYLE1" width="8%">
						毕业学校
					</td>
					<td width="13%" class="TD_STYLE2">
						<bean:write name="er" property="humanCollege" />
					</td>
					<td width="11%" nowrap class="TD_STYLE1">
						学历
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedDegree" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						教育年限
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedYears" />
					</td>
					<td class="TD_STYLE1">
						学历专业
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanEducatedMajor" />
					</td>
					<td class="TD_STYLE1">
						薪酬要求
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
						特长
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanSpecility" />
					</td>
					<td class="TD_STYLE1">
						爱好
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="humanHobby" />
					</td>
					<td class="TD_STYLE1">
						推荐人
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="checker" />
					</td>
					<td class="TD_STYLE1">
						推荐时间
					</td>
					<td class="TD_STYLE2">
						<bean:write name="er" property="str_checkTime" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						档案附件
					</td>
					<td class="TD_STYLE2" colspan="7">
						<a href="javascript:winopenm('query.jsp?filename=${er.attachmentName }')">
							<bean:write name="er" property="attachmentName" />
						</a>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						个人履历
					</td>
					<td class="TD_STYLE2" colspan="7">

						<bean:write name="er" property="humanHistoryRecords" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						备注
					</td>
					<td class="TD_STYLE2" colspan="7">

						<bean:write name="er" property="remark" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1" height="65">
						筛选推荐意见
					</td>
					<td class="TD_STYLE2" colspan="7">

						<bean:write name="er" property="recomandation" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						面试次数
					</td>
					<td class="TD_STYLE2">
						第
						<bean:write name="lastEI" property="interviewAmount" />
					</td>
					<td class="TD_STYLE1">
						形象评价
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="imageDegree" />
					</td>
					<td class="TD_STYLE1">
						口才评价
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="nativeLanguageDegree" />
					</td>
					<td class="TD_STYLE1">
						外语口语能力
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="foreignLanguageDegree" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						应变能力
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
						综合素质
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="multiQualityDegree" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						面试人
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="register" />
					</td>
					<td class="TD_STYLE1">
						面试时间
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="registeTime" />
					</td>
					<td class="TD_STYLE1">
						面试筛选人
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI" property="checker" />
					</td>
					<td class="TD_STYLE1">
						面试筛选时间
					</td>
					<td class="TD_STYLE2">
						<bean:write name="lastEI"
							property="checkTime" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						录用申请审核意见
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
