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
    <font color="#0000CC">您正在做的业务是：人力资源--招聘管理--职位发布管理--职位发布查询 </font></td>
  </tr>
  <tr>
   <td align="right"><input type="button" class="SUBMIT_STYLE1" value="申请该职位" onclick="javascript:shenqin(${engagemajorreleaseForm.item.mreId })">
      <input type="button" class="SUBMIT_STYLE1" value="返回" onclick="history.back()"></td>
  </tr>
</table>
<table width="100%" border="1" cellpadding=0 cellspacing=1 bordercolorlight=#848284 bordercolordark=#eeeeee class="TABLE_STYLE1">
  <tr class="TR_STYLE1">
    <td width="12%" class="TD_STYLE1"> I级机构</td>
    <td width="15%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.firstKindName"/> </td>
    <td width="18%" class="TD_STYLE1"> II级机构 </td>
    <td width="23%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.secondKindName"/></td>
    <td width="8%" class="TD_STYLE1"> III级机构 </td>
    <td width="8%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.thirdKindName"/> </td>
    <td width="8%" class="TD_STYLE1"> 招聘类型 </td>
    <td width="8%" class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.engageType"/> </td>
  </tr>
  <tr>
    <td class="TD_STYLE1"> 职位分类</td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.majorKindName"/> </td>
    <td class="TD_STYLE1"> 职位名称 </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.majorName"/> </td>
    <td class="TD_STYLE1"> 招聘人数 </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.humanAmount"/> </td>
    <td class="TD_STYLE1"> 截止日期 </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.deadline"/> </td>
  </tr>
  <tr>
    <td class="TD_STYLE1"> 登记人</td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.register"/></td>
    <td class="TD_STYLE1"> 登记时间 </td>
    <td class="TD_STYLE2"> <bean:write name="engagemajorreleaseForm" property="item.registTime"/> </td>
    <td class="TD_STYLE1">&nbsp;</td>
    <td class="TD_STYLE2">&nbsp;</td>
    <td class="TD_STYLE1">&nbsp;</td>
    <td class="TD_STYLE2">&nbsp;</td>
  </tr>
  <tr>
    <td class="TD_STYLE1" height="65"> 职位描述</td>
    <td class="TD_STYLE2" colspan="7"> <bean:write name="engagemajorreleaseForm" property="item.majorDescribe"/></td>
  </tr>
  <tr>
    <td class="TD_STYLE1" height="65"> 招聘要求</td>
    <td class="TD_STYLE2" colspan="7"> <bean:write name="engagemajorreleaseForm" property="item.engageRequired"/> </td>
  </tr>
</table>

</html:form>
</body>
</html>
