<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.*"%> <!-- //获取系统时间必须导入的  -->
<%@ page import="java.text.*"%> <!-- //获取系统时间必须导入的  -->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" href="css/table.css" type="text/css">
	</head>

	<body>
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">您正在做的业务是：人力资源--招聘管理--职位发布管理--职位发布变更 </font>
					</td>
				</tr>
				<tr>
					<td>
						当前可变更的职位发布总数：<%=((java.util.List)request.getAttribute("list")).size() %>例
					</td>
				</tr>
			</table>
		<html:form action="engagemajorrelease.do">
			
			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr class="TR_STYLE1">
					<td width="15%" class="TD_STYLE1">
						职位名称
					</td>
					<td width="22%" class="TD_STYLE1">
						机构名称
					</td>
					<td width="10%" class="TD_STYLE1">
						招聘人数
					</td>
					<td width="20%" class="TD_STYLE1">
						发布时间
					</td>
					<td width="19%" class="TD_STYLE1">
						截止时间
					</td>
					<td width="7%" class="TD_STYLE1">
						修改
					</td>
					<td width="7%" class="TD_STYLE1">
						删除
					</td>
				</tr>
				<c:forEach items="${ list }" var="list"  >
				      <tr>
					<td class="TD_STYLE2">
						${list.major_name}
					</td>
					<td class="TD_STYLE2">
						${list.second_kind_name }
					</td>
					<td class="TD_STYLE2">
						${list.human_amount }
					</td>
					<td class="TD_STYLE2">
						${list.regist_time }
					</td>
					<td class="TD_STYLE2">
						${list.deadline }
					</td>
					<td class="TD_STYLE2">
						${list.third_kind_name }
					</td>
					<td class="TD_STYLE2">
						${list.human_major_kind_name }
					</td>
					<td class="TD_STYLE2">
						${list.human_major_name }
					</td>
					<td class="TD_STYLE2">
						<a href="javascript:toEdit('${list.huf_id}')">修改</a>
					</td>
				</tr>
		     </c:forEach> 
				
			</table>
			</html:form>
	</body>
</html>
