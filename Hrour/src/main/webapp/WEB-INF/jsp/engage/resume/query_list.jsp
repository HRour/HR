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
		<html:form action="engageresume.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--��������--��Ч������ѯ </font>
					</td>
				</tr>
				<tr>
					<td>
						���������ļ���������<%=((List)(request.getAttribute("list"))).size() %>��
					</td>
				</tr>
			</table>

			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr class="TR_STYLE1">
					<td width="13%" class="TD_STYLE1">
						����
					</td>
					<td width="9%" class="TD_STYLE1">
						�Ա�
					</td>
					<td width="10%" class="TD_STYLE1">
						����
					</td>
					<td width="14%" class="TD_STYLE1">
						ְλ���
					</td>
					<td width="18%" class="TD_STYLE1">
						ְλ����
					</td>
					<td width="18%" class="TD_STYLE1">
						��ҵԺУ
					</td>
					<td width="18%" class="TD_STYLE1">
						ѧ��רҵ
					</td>
				</tr>
				<logic:iterate id="list" name="list" type="org.better.hr.entity.EngageResume">
				<tr class="TR_STYLE1">
					<td class="TD_STYLE2">
						<a href="engageresume.do?operate=toView&method=resume&id=${list.resId }">${list.humanName }</a>
					</td>
					<td class="TD_STYLE2">
						${list.humanSex }
					</td>
					<td class="TD_STYLE2">
						${list.humanAge }
					</td>
					<td class="TD_STYLE2">
						${list.humanMajorKindName }
					</td>
					<td class="TD_STYLE2">
						${list.humanMajorName }
					</td>
					<td class="TD_STYLE2">
						${list.humanCollege }
					</td>
					<td class="TD_STYLE2">
						${list.humanEducatedMajor }
					</td>
				</tr>
				</logic:iterate>
			</table>
			<page:updowntag
				num="<%=((java.util.List) request.getAttribute("list")).size()%>"
				file="engageresume.do?operate=list" />
		</html:form>
	</body>
</html>
