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
					<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--简历管理--有效简历查询 </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" class="SUBMIT_STYLE1" value="打印" name="B1">
					<input type="button" class="BUTTON_STYLE1" value="返回" onclick="history.back();">
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
					<bean:write name="engageresumeForm" property="item.humanMajorKindName"/>
				</td>
				<td width="9%" class="TD_STYLE1">
					职位名称
				</td>
				<td width="17%" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanMajorName"/>
				</td>
				<td width="8%" class="TD_STYLE1">
					招聘类型
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
					姓名
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanName"/>
				</td>
				<td class="TD_STYLE1">
					性别
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
					电话
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanTelephone"/>
				</td>
				<td class="TD_STYLE1">
					家庭电话
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanHomephone"/>
				</td>
				<td class="TD_STYLE1">
					手机
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanMobilephone"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					住址
				</td>
				<td colspan="3" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanAddress"/>
				</td>
				<td class="TD_STYLE1">
					邮编
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanPostcode"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					国籍
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanNationality"/>
				</td>
				<td class="TD_STYLE1">
					出生地
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanBirthplace"/>
				</td>
				<td class="TD_STYLE1">
					生日
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanBirthday"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					民族
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanRace"/>
				</td>
				<td class="TD_STYLE1">
					宗教信仰
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanReligion"/>
				</td>
				<td class="TD_STYLE1">
					政治面貌
				</td>
				<td class="TD_STYLE2" colspan="2">
					<bean:write name="engageresumeForm" property="item.humanParty"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					身份证号码
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanIdcard"/>
				</td>
				<td class="TD_STYLE1">
					年龄
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanAge"/>
				</td>
				<td class="TD_STYLE1" width="8%">
					毕业学校
				</td>
				<td width="13%" class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanCollege"/>
				</td>
				<td width="11%" class="TD_STYLE1">
					学历
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanEducatedDegree"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					教育年限
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanEducatedYears"/>
				</td>
				<td class="TD_STYLE1">
					学历专业
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanEducatedMajor"/>
				</td>
				<td class="TD_STYLE1">
					薪酬要求
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.demandSalaryStandard"/>
				</td>
				<td class="TD_STYLE1">
					注册时间
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.registTime"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1">
					特长
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanSpecility"/>
				</td>
				<td class="TD_STYLE1">
					爱好
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.humanHobby"/>
				</td>
				<td class="TD_STYLE1">
					推荐人
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.checker"/>
				</td>
				<td class="TD_STYLE1">
					推荐时间
				</td>
				<td class="TD_STYLE2">
					<bean:write name="engageresumeForm" property="item.str_checkTime"/>
				</td>
			</tr>
			<tr class="TR_STYLE1">
				<td class="TD_STYLE1">
					档案附件
				</td>
				<td class="TD_STYLE2" colspan="7">
					<a href="javascript:winopenm('query.jsp?filename=${engageresumeForm.item.attachmentName }')">${engageresumeForm.item.attachmentName }</a>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1" height="65">
					个人履历
				</td>
				<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="engageresumeForm" property="item.humanHistoryRecords"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1" height="65">
					备注
				</td>
				<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="engageresumeForm" property="item.remark"/>
				</td>
			</tr>
			<tr>
				<td class="TD_STYLE1" height="65">
					筛选推荐意见
				</td>
				<td class="TD_STYLE2" colspan="7">
					
					<bean:write name="engageresumeForm" property="item.recomandation"/>
				</td>
			</tr>
		</table>
	</body>
</html>
