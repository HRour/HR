<%@ page contentType="text/html; charset=gbk" language="java"
	errorPage=""%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<head>
<link rel="stylesheet" href="table.css" type="text/css">
<script type="text/javascript" src="javascript/comm/comm.js"></script>
<script type="text/javascript">
	function shenqin(id)
	{	
		document.forms[0].action = document.forms[0].action + "?operate=doApply&id="+id;
		document.forms[0].submit();
	}
</script>
</head>

<body>
<html:form action="engagemajorrelease.do">
<table width="100%" >
  <tr>
    <td> 
    <font color="#0000CC">����������ҵ���ǣ�������Դ--��Ƹ����--ְλ��������--ְλ������ѯ </font></td>
  </tr>
  <tr>
   <td align="right"><input type="button" class="SUBMIT_STYLE1" value="�����ְλ" onclick="javascript:shenqin(${engagemajorreleaseForm.item.mreId })">
      <input type="button" class="SUBMIT_STYLE1" value="����" onclick="history.back()"></td>
  </tr>
</table>
<table width="100%" border="1" cellpadding=0 cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee class="TABLE_STYLE1">
  <tr class="TR_STYLE1">
    <td width="12%" class="TD_STYLE1"> I������</td>
    <td width="15%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.firstKindName"/> </td>
    <td width="18%" class="TD_STYLE1"> II������ </td>
    <td width="23%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.secondKindName"/></td>
    <td width="8%" class="TD_STYLE1"> III������ </td>
    <td width="8%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.thirdKindName"/> </td>
    <td width="8%" class="TD_STYLE1"> ��Ƹ���� </td>
    <td width="8%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.engageType"/> </td>
  </tr>
  <tr>
    <td class="TD_STYLE1"> ְλ����</td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.majorKindName"/> </td>
    <td class="TD_STYLE1"> ְλ���� </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.majorName"/> </td>
    <td class="TD_STYLE1"> ��Ƹ���� </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.humanAmount"/> </td>
    <td class="TD_STYLE1"> ��ֹ���� </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.deadline"/> </td>
  </tr>
  <tr>
    <td class="TD_STYLE1"> �Ǽ���</td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.register"/></td>
    <td class="TD_STYLE1"> �Ǽ�ʱ�� </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.registTime"/> </td>
    <td class="TD_STYLE1">&nbsp;</td>
    <td class="TD_STYLE2">&nbsp;</td>
    <td class="TD_STYLE1">&nbsp;</td>
    <td class="TD_STYLE2">&nbsp;</td>
  </tr>
  <tr>
    <td class="TD_STYLE1" height="65"> ְλ����</td>
    <td class="TD_STYLE2" colspan="7"> <bean:write name="engagemajorreleaseForm" property="item.majorDescribe"/></td>
  </tr>
  <tr>
    <td class="TD_STYLE1" height="65"> ��ƸҪ��</td>
    <td class="TD_STYLE2" colspan="7"> <bean:write name="engagemajorreleaseForm" property="item.engageRequired"/> </td>
  </tr>
</table>

</html:form>
</body>
</html>
