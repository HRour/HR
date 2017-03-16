<%@ page contentType="text/html; charset=gb2312" language="java"
	errorPage=""%>
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
		<script type="text/javascript">
			function toEdit(id)
			{
				document.forms[0].action = document.forms[0].action + "?operate=toEdit&id="+id;
				document.forms[0].submit();
			}
		</script>
	</head>

	<body>
	<html:form action="engageresume.do">
		<table width="100%">
			<tr>
				<td>
					<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--¼�ù���--¼������  </font>
				</td>
			</tr>
			<tr>
				<td>
					��ǰ�ȴ�¼������ļ���������<%=((java.util.List)request.getAttribute("list")).size() %>��
				</td>
			</tr>
		</table>
			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr class="TR_STYLE1">
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE1">
						�Ա�
					</td>
					<td class="TD_STYLE1">
						����
					</td>
					<td class="TD_STYLE1">
						ְλ���
					</td>
					<td class="TD_STYLE1">
						ְλ����
					</td>
					<td class="TD_STYLE1">
						��ҵԺУ
					</td>
					<td class="TD_STYLE1">
						ѧ��רҵ
					</td>
					<td class="TD_STYLE1">
						����
					</td>
				</tr>
				<logic:iterate id="list" name="list" type="org.better.hr.entity.EngageResume">
					<tr class="TR_STYLE1">
						<td class="TD_STYLE2">
							${list.humanName }
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
						<td class="TD_STYLE2">
							<a href="">����</a>
						</td>
					</tr>
				</logic:iterate>
			</table>
			<page:updowntag
				num='<%=((java.util.List) request.getAttribute("list")).size()%>'
				file="engageresume.do?operate=list" />
		</html:form>
	</body>
</html>
