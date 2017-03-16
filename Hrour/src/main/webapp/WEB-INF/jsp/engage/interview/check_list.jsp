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
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--面试管理--面试筛选 </font>
					</td>
				</tr>
				<tr>
					<td>
						当前等待筛选的面试总数：<%=((java.util.List)(request.getAttribute("list"))).size() %>例
					</td>
				</tr>
			</table>

			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr class="TR_STYLE1">
					<td width="15%" class="TD_STYLE1">
						姓名
					</td>
					<td width="18%" class="TD_STYLE1">
						职位分类
					</td>
					<td width="18%" class="TD_STYLE1">
						职位名称
					</td>
					<td width="10%" class="TD_STYLE1">
						面试次数
					</td>
					<td width="22%" class="TD_STYLE1">
						面试时间
					</td>
					<td width="10%" class="TD_STYLE1">
						综合素质
					</td>
					<td width="7%" class="TD_STYLE1">
						筛选
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
							<a href="engageinterview.do?operate=toCheck&einid=${list.einId }&resid=${list.resumeId }">筛选</a>
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
