<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="table.css" type="text/css">
</head>
<script type="text/javascript">
	function back()
	{	
		document.forms[0].action=document.forms[0].action + "?operate=toAdd";
		document.forms[0].submit();
	}
</script>
<body>
<form method="post" action="engagemajorrelease.do">
<table width="100%" >
  <tr>
    <td colspan="2"> 
    <font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--ְλ��������--ְλ�����Ǽ�  </font></td>
  </tr>
  <tr>
    <td align="right">
      <div align="left">�Ǽǳɹ����뷵�أ�  
    </div></td>
    <td align="right"><input type="button" class="BUTTON_STYLE1" value="����" onclick="javascript:back()"></td>
  </tr>
  </table>
  </form>
</body>
</html>