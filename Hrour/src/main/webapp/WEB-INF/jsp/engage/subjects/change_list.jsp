<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*" errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/mytag.tld" prefix="page"%>
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
		<html:form action="engagesubjects.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--��Ƹ����������--������ </font>
					</td>
				</tr>
				<tr>
					<td>
						��������������������<%=((List)(request.getAttribute("list"))).size() %>��
					</td>
				</tr>
			</table>

			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr class="TR_STYLE1">
					<td width="13%" class="TD_STYLE1">
						���
					</td>
					<td width="14%" class="TD_STYLE1">
						����I������
					</td>
					<td width="14%" class="TD_STYLE1">
						����II������
					</td>
					<td width="8%" class="TD_STYLE1">
						�Ǽ���
					</td>
					<td width="16%" class="TD_STYLE1">
						�Ǽ�����
					</td>
					<td width="14%" class="TD_STYLE1">
						����
					</td>
					<td width="8%" class="TD_STYLE1">
						��ȷ��
					</td>
					<td width="8%" class="TD_STYLE1">
						���
					</td>
				</tr>
				<logic:iterate id="list" name="list" type="org.better.hr.entity.EngageSubjects">
				<tr class="TR_STYLE1">
					<td class="TD_STYLE2">
						${list.content }
					</td>
					<td class="TD_STYLE2">
						${list.firstKindName }
					</td>
					<td class="TD_STYLE2">
						${list.secondKindName }
					</td>
					<td class="TD_STYLE2">
						${list.register }
					</td>
					<td class="TD_STYLE2">
						${list.registTime }
					</td>
					<td class="TD_STYLE2">
						${list.derivation }
					</td>
					<td class="TD_STYLE2">
						${list.correctKey }
					</td>
					<td class="TD_STYLE2">
						<a href="engagesubjects.do?operate=toEdit&id=${list.subId }">���</a>
					</td>
				</tr>
				</logic:iterate>
			</table>
			<page:updowntag
				num="<%=((java.util.List) request.getAttribute("list")).size()%>"
				file="engagesubjects.do?operate=list" />
		</html:form>
	</body>
</html>
