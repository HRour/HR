<%@ page contentType="text/html; charset=gb2312" language="java"  import="java.util.*"
	 errorPage=""%>
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
		<script type="text/javascript" src="javascript/comm/time.js"></script>
		<script type="text/javascript" src="javascript/comm/select.js"></script>
		<script type="text/javascript">
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
			"\", \""+item.getSecondKindId()+"/"+item.getSecondKindName()+
			"\", \""+item.getFirstKindId()+"/"+item.getFirstKindName()+
			"\"];");
			++i;
		}
 		%>	
 		</script>
	</head>

	<body>
		<html:form action="engagesubjects.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--招聘考试题库管理--试题登记 </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="button" value="提交" class="BUTTON_STYLE1"
							onclick="javascript:doAdd();">
						<input type="reset" value="清除" class="BUTTON_STYLE1">
					</td>
				</tr>
			</table>		
			
			<table class="TABLE_STYLE1" border="1" width="100%" cellpadding=0
				cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee>
				
				<tr class="TR_STYLE1">
					<td width="8%" nowrap class="TD_STYLE1">
						试题I级分类
					</td>
					<td width="14%">
						<html:select property="item.firstKindName"
							styleClass="SELECT_STYLE1"
							onchange="changelocation2(document.forms[0].elements['item.secondKindName'],document.forms[0].elements['item.firstKindName'].options[document.forms[0].elements['item.firstKindName'].selectedIndex].value)">
							<html:option value="">&nbsp;</html:option>
							<logic:iterate id="list" name="first_kind_question"
								type="org.better.hr.entity.ConfigQuestionFirstKind">
								<html:option value="${list.firstKindId}/${list.firstKindName}">${list.firstKindId}/${list.firstKindName}</html:option>
							</logic:iterate>
						</html:select>
					</td>
					<td width="8%" nowrap class="TD_STYLE1">
						试题II级分类
					</td>
					<td width="14%">
						<html:select property="item.secondKindName"
							styleClass="SELECT_STYLE1">
							<script language="javascript">
							changelocation2(document.forms[0].elements["item.secondKindName"],document.forms[0].elements["item.firstKindName"].value)
							</script>
						</html:select>
					</td>
					<td width="8%" nowrap class="TD_STYLE1">
						登记人
					</td>
					<td width="14%" class="TD_STYLE2">
						<html:text property="item.register" styleClass="INPUT_STYLE2" value="${userName}"></html:text>
					</td>
					<td width="8%" class="TD_STYLE1">
						登记时间
					</td>
					<td width="14%" class="TD_STYLE2">
						<bean:write name="engagesubjectsForm" property="item.str_registTime"/>
						<html:hidden property="item.str_registTime" value="item.str_registTime"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						题干
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engagesubjectsForm"
							property="item.content" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						答案a
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engagesubjectsForm"
							property="item.keyA" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						答案b
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engagesubjectsForm"
							property="item.keyB" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						答案c
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engagesubjectsForm"
							property="item.keyC" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						答案d
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engagesubjectsForm"
							property="item.keyD" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						答案e
					</td>
					<td class="TD_STYLE2" colspan="7">
						<html:textarea name="engagesubjectsForm"
							property="item.keyE" styleClass="TEXTAREA_STYLE1"
							rows="4" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						正确答案
					</td>
					<td class="TD_STYLE2">
						<html:text property="item.correctKey" styleClass="INPUT_STYLE2"></html:text>
					</td>
					<td class="TD_STYLE1">
						试题出处
					</td>
					<td class="TD_STYLE2">
						<html:text property="item.derivation" styleClass="INPUT_STYLE2"></html:text>
					</td>
					<td class="TD_STYLE1">
						
					</td>
					<td class="TD_STYLE2">
						
					</td>
					<td class="TD_STYLE1">
						
					</td>
					<td class="TD_STYLE2">
						
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
