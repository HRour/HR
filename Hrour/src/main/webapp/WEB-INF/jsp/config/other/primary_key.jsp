<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<html>
<head>
<link rel="stylesheet" href="css/table.css" type="text/css">
		<script type="text/javascript" src="javascript/comm/comm.js"></script>
<script type="text/javascript">
	function toRegister()
	{
		document.forms[0].action = document.forms[0].action + "?operate=list";
		document.forms[0].submit();
	}
</script>
</head>

<body><form action="configprimarykey.do" method="post">
<table width="100%" >
  <tr>
    <td> 
    <font color="#0000CC">您正在做的业务是：人力资源--客户化设置--其他设置--关键字查询设置</font></td>
  </tr>
</table>
  <table width="100%" border="0">
  <tr class="TR_STYLE1">
    <td width="18%"> 请选择数据库表的名称</td>
    <td width="69%"><select name="primary_key_table"  styleClass="SELECT_STYLE2">
      <option value="human_file">人力资源档案</option>
      <option value="SalaryStandard">薪酬标准</option>
      <option value="SalaryGrant">薪酬发放</option>
      <option value="MajorChange">调动管理</option>
      <option value="Training">培训管理</option>
      <option value="Bonus">激励管理</option>
    </select></td>
	<td width="13%">
	<input type="button" value="开始" class="BUTTON_STYLE1" onclick="toRegister();">
      <input type="button" value="返回" class="BUTTON_STYLE1">
	 </td>
  </tr>
</table>
</form>
</body>
</html>

<iframe  width=0 height=0></iframe>
