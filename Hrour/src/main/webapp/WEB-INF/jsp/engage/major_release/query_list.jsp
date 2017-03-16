<%@ page contentType="text/html; charset=gbk" language="java"
	errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/mytag.tld" prefix="page"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="table.css" type="text/css">
		<script type="text/javascript">
			function toApply(id)
			{
				document.forms[0].action = document.forms[0].action + "?operate=toApply&id="+id;
				document.forms[0].submit();
			}
		</script>
	</head>

	<body>
		<html:form action="engagemajorrelease.do">
		<table width="100%">
			<tr>
				<td>
					<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--职位发布管理--职位发布查询 </font>
				</td>
			</tr>
			<tr>
				<td>
					符合条件的职位发布总数：<%=((java.util.List)request.getAttribute("list")).size() %>例
				</td>
			</tr>
		</table>
		<table width="100%" border="1" cellpadding=0 cellspacing=1
			bordercolorlight=#848284 bordercolordark=#eeeeee class="TABLE_STYLE1">
			<tr class="TR_STYLE1">
				<td width="15%" class="TD_STYLE1">
					职位名称
				</td>
				<td width="10%" class="TD_STYLE1">
					机构名称
				</td>
				<td width="10%" class="TD_STYLE1">
					招聘人数
				</td>
				<td width="25%" class="TD_STYLE1">
					发布时间
				</td>
				<td width="20%" class="TD_STYLE1">
					截止时间
				</td>
				<td width="20%" class="TD_STYLE1">
					申请该职位
				</td>
			</tr>
			<logic:iterate id="list" name="list"
				type="org.better.hr.entity.EngageMajorRelease">
				<tr>
					<td class="TD_STYLE2">
						<bean:write name="list" property="majorName" />
					</td>
					<td class="TD_STYLE2">
						<bean:write name="list" property="firstKindName" />
					</td>
					<td class="TD_STYLE2">
						<bean:write name="list" property="humanAmount" />
					</td>
					<td class="TD_STYLE2">
						<bean:write name="list" property="registTime" />
					</td>
					<td class="TD_STYLE2">
						<font color="red"><bean:write name="list"
								property="deadline" />
						</font>
					</td>
					<td class="TD_STYLE2">
						<a href="javascript:toApply('${list.mreId}')">申请该职位</a>
					</td>
				</tr>
			</logic:iterate>
		</table>
		<page:updowntag
				num='<%=((java.util.List) request.getAttribute("list")).size()%>'
				file="engagemajorrelease.do?operate=list" />
</html:form>
	</body>
</html>
