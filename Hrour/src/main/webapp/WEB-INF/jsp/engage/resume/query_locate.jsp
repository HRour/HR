<%@ page contentType="text/html; charset=gb2312" language="java"
	errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<jsp:directive.page import="java.util.Iterator"/>
<jsp:directive.page import="org.better.hr.entity.ConfigMajor"/>
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
			function doQuery()
			{
				document.forms[0].action = document.forms[0].action + "?operate=list&method=query&checkStatus=1";
				document.forms[0].submit();
			}
			
			<%
		//将职位名称存入数组
		java.util.List list1 = (java.util.List)request.getAttribute("list_major");
		Iterator it = list1.iterator();
		out.println("var subcat2 = new Array("+list1.size()+");");
		int i = 0;
		while(it.hasNext())
		{ 
			ConfigMajor item = (ConfigMajor)it.next();
			out.println("subcat2["+i+"] = [\""+item.getMakId()+
			"\", \""+item.getMajorName()+
			"\", \""+item.getMajorKindName()+
			"\"];");
			++i;
		}
 		%>
		</script>
	</head>

	<body>
		<html:form action="engageresume.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--简历管理--有效简历查询 </font>
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
						请选择职位分类
					</td>
					<td class="TD_STYLE2" width="80%">
						<html:select property="item.humanMajorKindName"
							styleClass="SELECT_STYLE2" size="4"
							onchange="changelocation2(document.forms[0].elements['item.humanMajorName'],document.forms[0].elements['item.humanMajorKindName'].options[document.forms[0].elements['item.humanMajorKindName'].selectedIndex].value)">
							<html:option value="">&nbsp;</html:option>
							<logic:iterate id="list" name="list_majorkind">
								<html:option value="${list.majorKindName}">${list.majorKindName}</html:option>
							</logic:iterate>
						</html:select>

						<html:select property="item.humanMajorName"
							styleClass="SELECT_STYLE2" size="4">
							<script language="javascript">
							changelocation2(document.forms[0].elements["item.humanMajorName"],document.forms[0].elements["item.humanMajorKindName"].value)
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
