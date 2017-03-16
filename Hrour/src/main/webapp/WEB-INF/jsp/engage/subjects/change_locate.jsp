<%@ page language="java" pageEncoding="GBK" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<jsp:directive.page import="org.better.hr.entity.*" />
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="table.css" type="text/css">
		<link rel="stylesheet" type="text/css" media="all"
			href="javascript/calendar/calendar-win2k-cold-1.css">
		<script type="text/javascript" src="javascript/calendar/cal.js"></script>
		<script type="text/javascript" src="javascript/comm/comm.js"></script>
		<script type="text/javascript" src="javascript/comm/select.js"></script>
		<script type="text/javascript">
			function doChange()
			{
				document.forms[0].action = document.forms[0].action + "?operate=list&param=change";
				document.forms[0].submit();
			}
		<%
		//将职位名称存入数组
		List list1 = (List)request.getAttribute("second_kind_question");
		Iterator it = list1.iterator();
		out.println("var subcat2 = new Array("+list1.size()+");");
		int i = 0;
		while(it.hasNext())
		{ 
			ConfigQuestionSecondKind item = (ConfigQuestionSecondKind)it.next();
			out.println("subcat2["+i+"] = [\""+item.getQskId()+
			"\", \""+item.getSecondKindName()+
			"\", \""+item.getFirstKindName()+
			"\"];");
			++i;
		}
 		%>	
 		</script>
		
	</head>

	<body>
		<table width="100%">
			<tr>
				<td>
					<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--招聘考试题库管理--试题变更 </font>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" class="SUBMIT_STYLE1" value="开始"
						onclick="javascript:doChange();">
				</td>
			</tr>
		</table>

		<html:form action="engagesubjects.do">

			<table class="TABLE_STYLE1" width="100%">
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1" width="20%">
						请选择试题分类
					</td>
					<td class="TD_STYLE2" width="80%">
						<html:select property="item.firstKindName"
							styleClass="SELECT_STYLE2" size="4"
							onchange="changelocation2(document.forms[0].elements['item.secondKindName'],document.forms[0].elements['item.firstKindName'].options[document.forms[0].elements['item.firstKindName'].selectedIndex].value)">
							<html:option value="">&nbsp;</html:option>
							<logic:iterate id="list" name="first_kind_question">
								<html:option value="${list.firstKindName}">${list.firstKindName}</html:option>
							</logic:iterate>
						</html:select>

						<html:select property="item.secondKindName"
							styleClass="SELECT_STYLE2" size="4">
							<script language="javascript">
							changelocation2(document.forms[0].elements["item.secondKindName"],document.forms[0].elements["item.firstKindName"].value)
							</script>
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
