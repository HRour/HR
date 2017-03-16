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
	</head>

	<body>
		<html:form action="engageresume.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--���Թ���--����ɸѡ </font>
					</td>
				</tr>
				<tr>
					<td>
						��ǰ�ȴ�ɸѡ������������<%=((java.util.List)(request.getAttribute("list"))).size() %>��
					</td>
				</tr>
			</table>

			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr class="TR_STYLE1">
					<td width="15%" class="TD_STYLE1">
						����
					</td>
					<td width="18%" class="TD_STYLE1">
						ְλ����
					</td>
					<td width="18%" class="TD_STYLE1">
						ְλ����
					</td>
					<td width="10%" class="TD_STYLE1">
						���Դ���
					</td>
					<td width="22%" class="TD_STYLE1">
						����ʱ��
					</td>
					<td width="10%" class="TD_STYLE1">
						�ۺ�����
					</td>
					<td width="7%" class="TD_STYLE1">
						ɸѡ
					</td>
				</tr>
				<logic:iterate id="list" name="list"
					type="org.better.hr.entity.EngageInterview">
					<tr class="TR_STYLE1">
						<td class="TD_STYLE2">
							${list.humanName}
						</td>
						<td class="TD_STYLE2">
							${list.humanMajorKindName }
						</td>
						<td class="TD_STYLE2">
							${list.humanMajorName }
						</td>
						<td class="TD_STYLE2">
							${list.interviewAmount }
						</td>
						<td class="TD_STYLE2">
							${list.registeTime }
						</td>
						<td class="TD_STYLE2">
							${list.multiQualityDegree }
						</td>
						<td class="TD_STYLE2">
							<a href="engageinterview.do?operate=toCheck&einid=${list.einId }&resid=${list.resumeId }">ɸѡ</a>
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
