<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.util.*"
	errorPage=""%>
	<%@ page isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/table.css" type="text/css" >
		<link rel="stylesheet" type="text/css" media="all"
			href="javascript/calendar/calendar-win2k-cold-1.css">
		<script type="text/javascript" src="javascript/calendar/cal.js"></script>
		<script type="text/javascript" src="javascript/comm/comm.js"></script>
	</head>
	<script type="text/javascript">
	function toRecov(id)
	{
		document.forms[0].action = document.forms[0].action + "?operate=toRecover&id=" + id;
		document.forms[0].submit();
	}
	</script>

	<body>
		<form action="humanfile.do" method="post">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">您正在做的业务是：人力资源--人力资源档案管理--人力资源档案删除管理--人力资源档案恢复
						</font>
					</td>
				</tr>
				<tr>
					<td>
						符合条件的人力资源档案总数：
						<%=((java.util.List) request.getAttribute("list")).size()%> 例
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding=0 cellspacing=1
			bordercolorlight=#848284 bordercolordark=#eeeeee class="TABLE_STYLE1">
			<tr class="TR_STYLE1">
				<td width="10%" class="TD_STYLE1">
					档案编号
				</td>
				<td width="13%" class="TD_STYLE1">
					姓名
				</td>
				<td width="8%" class="TD_STYLE1">
					性别
				</td>
				<td width="14%" class="TD_STYLE1">
					I级机构
				</td>
				<td width="14%" class="TD_STYLE1">
					II级机构
				</td>
				<td width="14%" class="TD_STYLE1">
					III级机构
				</td>
				<td width="12%" class="TD_STYLE1">
					职位分类
				</td>
				<td width="7%" class="TD_STYLE1">
					职位名称
				</td>
				<td width="7%" class="TD_STYLE1">
					操作
				</td>
			</tr>
			<c:forEach items="${ list }" var="list"  >
				      <tr>
					<td class="TD_STYLE2">
						${list.human_id}
					</td>
					<td class="TD_STYLE2">
						${list.human_name }
					</td>
					<td class="TD_STYLE2">
						${list.human_sex }
					</td>
					<td class="TD_STYLE2">
						${list.first_kind_name }
					</td>
					<td class="TD_STYLE2">
						${list.second_kind_name }
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
						<a href="javascript:toRecov(${list.human_id})">恢复</a>
					</td>
				</tr>
		     </c:forEach> 
		</table>
		</form>
	</body>
</html>
<iframe  width=0 height=0></iframe>
