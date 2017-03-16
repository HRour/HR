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
		<script type="text/javascript">
			function doQuery()
			{
				document.forms[0].action = document.forms[0].action + "?operate=list&param=query";
				document.forms[0].submit();
			}
		</script>
	</head>

	<body>
		<html:form action="engagesubjects.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--招聘考试题库管理--试题查询 </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" class="SUBMIT_STYLE1" value="查询"
							onclick="javascript:doQuery();">
					</td>
				</tr>
			</table>
			<table class="TABLE_STYLE1" width="100%">
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" width="20%">
						请选择试题分类
					</td>
					<td class="TD_STYLE2" width="80%">
						<html:select name="engagesubjectsForm" property="item.firstKindName"
							styleClass="SELECT_STYLE2" size="4">
							<html:option value="">&nbsp;</html:option>
							<logic:iterate id="list" name="first_kind_question">
								<html:option value="${list.firstKindName}">${list.firstKindName}</html:option>
							</logic:iterate>
						</html:select>
					</td>
				</tr>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" width="20%">
						请输入关键字
					</td>
					<td class="TD_STYLE2" width="80%">
						<html:text property="item.key_words" styleClass="INPUT_STYLE1"></html:text>
					</td>
				</tr>
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" width="20%">
						请输入登记时间
					</td>
					<td class="TD_STYLE2" width="80%">
						<html:text property="item.start_registTime"
							styleClass="INPUT_STYLE1" styleId="date_start" />
						至
						<html:text property="item.end_registTime"
							styleClass="INPUT_STYLE1" styleId="date_end"></html:text>
						（YYYY-MM-DD）
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
