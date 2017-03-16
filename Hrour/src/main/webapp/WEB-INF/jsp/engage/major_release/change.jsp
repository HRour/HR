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
			function checkHumanAmount(textName)
			{	
				if(textName.value > 32767)
				{
				   alert("数字超出范围！");
				} 				   
			}
		</script>
	</head>

	<body>
		<table width="100%">
			<tr>
				<td>
					<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--职位发布管理--职位发布变更 </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" class="BUTTON_STYLE1" value="重新提交"
						onclick="javascript:doEdit('${engagemajorreleaseForm.item.mreId}');">
					<input type="button" value="返回" class="BUTTON_STYLE1"
						onclick="history.back()">
				</td>
			</tr>
		</table>

		<html:form action="engagemajorrelease.do">
			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1">
						I级机构
					</td>
					<td class="TD_STYLE2" width="13%">
						<bean:write name="engagemajorreleaseForm"
							property="item.firstKindName" />
					</td>
					<td class="TD_STYLE1" width="11%">
						II级机构
					</td>
					<td class="TD_STYLE2" width="13%">
						${engagemajorreleaseForm.item.secondKindName}
					</td>
					<td class="TD_STYLE1" width="11%">
						III级机构
					</td>
					<td class="TD_STYLE2" width="13%">
						${engagemajorreleaseForm.item.thirdKindName}
					</td>
					<td class="TD_STYLE1" width="11%">
						招聘类型
					</td>
					<td class="TD_STYLE2" width="13%">
						<html:select property="item.engageType" styleClass="SELECT_STYLE1">
							<html:option value="社会招聘">社会招聘</html:option>
							<html:option value="校园招聘">校园招聘</html:option>
						</html:select>
					</td>
				</tr>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" width="11%">
						职位分类
					</td>
					<td class="TD_STYLE2" width="13%">
						${engagemajorreleaseForm.item.majorKindName}
					</td>
					<td class="TD_STYLE1" width="11%">
						职位名称
					</td>
					<td class="TD_STYLE2" width="13%">
						${engagemajorreleaseForm.item.majorName}
					</td>
					<td class="TD_STYLE1" width="11%">
						招聘人数
					</td>
					<td class="TD_STYLE2" width="13%">
						<html:text name="engagemajorreleaseForm"
							property="item.humanAmount" styleClass="INPUT_STYLE2"/>
					</td>
					<td class="TD_STYLE1" width="11%">
						截止日期
					</td>
					<td class="TD_STYLE2" width="13%">
						<html:text name="engagemajorreleaseForm"
							property="item.str_deadline" styleClass="INPUT_STYLE2"
							styleId="date_start" />
					</td>
				</tr>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" width="11%">
						变更人
					</td>
					<td class="TD_STYLE2" width="13%">
						<html:text name="engagemajorreleaseForm" property="item.changer"
							styleClass="INPUT_STYLE2" value="${userName}" readonly="true"/>
					</td>
					<td class="TD_STYLE1" width="11%">
						变更时间
					</td>
					<td class="TD_STYLE2" width="13%">
						<html:text name="engagemajorreleaseForm"
							property="item.str_changeTime" styleClass="INPUT_STYLE2"
							 readonly="true"/>
					</td>
					<td class="TD_STYLE1" width="11%">
						&nbsp;
					</td>
					<td class="TD_STYLE2" width="13%">
						&nbsp;
					</td>
					<td class="TD_STYLE1" width="11%">
						&nbsp;
					</td>
					<td class="TD_STYLE2" width="13%">
						&nbsp;
					</td>
				</tr>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" height="65" width="11%">
						职位描述
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea property="item.majorDescribe"
							name="engagemajorreleaseForm" styleClass="TEXTAREA_STYLE1"
							rows="4"></html:textarea>
					</td>
				</tr>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1">
						招聘要求
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea property="item.engageRequired"
							name="engagemajorreleaseForm" styleClass="TEXTAREA_STYLE1"
							rows="4"></html:textarea>
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
