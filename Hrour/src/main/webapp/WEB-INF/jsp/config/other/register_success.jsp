<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="table.css" type="text/css">
<script type="text/javascript">
function locate()
{
	document.forms[0].action = document.forms[0].action + "?operate=locate";
	document.forms[0].submit();
}
</script>
</head>
<body>
<form method="post" action="configprimarykey.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">您正在做的业务是：人力资源--客户化设置--其他设置--关键字查询设置</font></td>
  </tr>
  <tr>
    <td width="49%"> 关键字设置成功，请返回！</td>
    <td width="51%" align="right">
    <input type="button" value="返回" class="BUTTON_STYLE1" onclick="javascript:locate();"></td></tr>
  </table>

</form>
</body>
</html>
<iframe  width=0 height=0></iframe>
