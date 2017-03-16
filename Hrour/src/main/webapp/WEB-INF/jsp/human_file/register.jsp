<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.*"%> <!-- //获取系统时间必须导入的  -->
<%@ page import="java.text.*"%> <!-- //获取系统时间必须导入的  -->
<%
	//添加基底网址(只使用.jsp页面)
	String path = request.getContextPath();//doubanTeacher
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
	<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/table.css" type="text/css" >
		<link rel="stylesheet" type="text/css" media="all"
			href="javascript/calendar/calendar-win2k-cold-1.css" >
		<script type="text/javascript" src="javascript/calendar/cal.js" charset="utf-8"></script>
		<script type="text/javascript" src="javascript/comm/comm.js" charset="utf-8"></script>
		<script type="text/javascript" src="javascript/comm/jquery-1.12.4.js"></script>
<% 
	String datetime=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()); //获取系统时间 
	request.setAttribute("currentTime",datetime);
%>

	
<script type="text/javascript">
//一级机构发生改变
	$(document).ready(
			function() {
				$("#FirstKind").change(
					function() {
						$.post("findInfoByFirstKind/"+ $(this).val(),
								function(json) {
										var obj =$.parseJSON(json);
											$("#SecondKind").html("");
											$("#SecondKind").append("<option value='1/软件公司'>请选择II级机构</option>");
												for (var i = 0; i < obj.length; i++) {
															var second = obj[i];
															$("#SecondKind").append("<option value='"+second.second_kind_id+"/"+second.second_kind_name+"'>"+second.second_kind_id+"/"+second.second_kind_name+"</option>");
																}
															});
										});
					});
					//二级机构发生改变
	$(document).ready(
			function() {
				$("#SecondKind").change(
					function() {
						//alert($("#SecondKind").val());
						$.post("findInfoByFirstKind/"+$("#FirstKind").val()+"?SecondName="+$("#SecondKind").val(),
								function(json) {
										var obj =$.parseJSON(json);
											$("#ThirdKind").html("");
											$("#ThirdKind").append("<option value='1/外包组'>请选择III级机构</option>");
												for (var i = 0; i < obj.length; i++) {
															var third = obj[i];
															$("#ThirdKind").append("<option value='"+third.third_kind_id+"/"+third.third_kind_name+"'>"+third.third_kind_id+"/"+third.third_kind_name+"</option>");
																}
															});
										});
					});
					
	//职位分类发生改变
	$(document).ready(
			function() {
				$("#MajorKind").change(
					function() {
						$.post("findInfoByMajorKind/"+ $(this).val(),
								function(json) {
										var obj =$.parseJSON(json);
											$("#majorName").html("");
											$("#majorName").append("<option value='1/区域经理'>请选择职位名称</option>");
												for (var i = 0; i < obj.length; i++) {
															var major = obj[i];
															$("#majorName").append("<option value='"+major.major_id+"/"+major.major_name+"'>"+major.major_id+"/"+major.major_name+"</option>");
																}
															});
										});
					});
					
</script>
	</head>
	<body>
		<form method="post" action="humanfile.do">
			<table width="100%">
				<tr>
					<td>
						<font color="#0000CC">您正在做的业务是：人力资源--人力资源档案管理--人力资源档案登记 </font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="submit" value="提交"/>
						<input type="reset" value="清除" class="BUTTON_STYLE1">
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding=0 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr>
					<td class="TD_STYLE1" width="11%">
						I级机构
					</td>
					<td width="14%" class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="first_kind_name" id="FirstKind">
							<option value="0/0">请选择I级机构</option>
							<c:forEach items="${ list }" var="configfilefirstkinds">
							<option value="${configfilefirstkinds.firstKindId}/${configfilefirstkinds.firstKindName}">${configfilefirstkinds.firstKindId }/${configfilefirstkinds.firstKindName }</option>
						</c:forEach>
						</select>
					</td>
					<td width="11%" class="TD_STYLE1">
						II级机构
					</td>
					<td width="14%" class="TD_STYLE2">
						<select Class="SELECT_STYLE1" name="second_kind_name"  id="SecondKind">
						<option value="0/0">请选择II级机构</option>
						</select>
					</td>
					<td width="11%" class="TD_STYLE1">
						III级机构
					</td>
					<td class="TD_STYLE2" colspan="2">
						<select  Class="SELECT_STYLE1"
							name="third_kind_name" id="ThirdKind">
							<option value="0/0">请选择III级机构</option>
						</select>
					</td>
					<td rowspan="5">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						职位分类
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_major_kind_name"  id="MajorKind">
							<option value="0/0">请选择职位分类</option>
							<c:forEach items="${ list2 }" var="configfilemajorkinds">
							<option value="${configfilemajorkinds.major_kind_id}/${configfilemajorkinds.major_kind_name}">${configfilemajorkinds.major_kind_id }/${configfilemajorkinds.major_kind_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						职位名称
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_major_name"  id="majorName">
							<option value="0/0">请选择职位名称</option>
						</select>
					</td>
					<td class="TD_STYLE1">
						职称
					</td>
					<td colspan="2" class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_pro_designation">
							<option value="无">请选择职称</option>
							<c:forEach items="${ list3 }" var="Profession">
							<option value="${Profession.attribute_name }">${Profession.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						姓名
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_name" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						性别
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1" name="human_sex">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</td>
					<td class="TD_STYLE1">
						EMAIL
					</td>
					<td colspan="2" class="TD_STYLE2">
						<input type="text" name="human_email" class="INPUT_STYLE2">
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						电话
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_telephone" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						QQ
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_qq" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						手机
					</td>
					<td colspan="2" class="TD_STYLE2">
						<input type="text" name="human_mobilephone" class="INPUT_STYLE2">
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						住址
					</td>
					<td colspan="3" class="TD_STYLE2">
						<input type="text" name="human_address" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						邮编
					</td>
					<td colspan="2" class="TD_STYLE2">
						<input type="text" name="human_postcode" class="INPUT_STYLE2">
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						国籍
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_nationality">
							<option value="中国">请选择国籍</option>
							<c:forEach items="${ list4 }" var="country">
							<option value="${country.attribute_name }">${country.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						出生地
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_birthplace" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						生日
					</td>
					<td width="13%" class="TD_STYLE2">
						<input type="text" name="human_birthday" class="INPUT_STYLE2" id="date_start" />
					</td>
					<td width="11%" class="TD_STYLE1">
						民族
					</td>
					<td class="TD_STYLE2" width="14%">
						<select Class="SELECT_STYLE1" name="human_race">
						<option value="汉">请选择民族</option>
							<c:forEach items="${ list5 }" var="race">
							<option value="${race.attribute_name }">${race.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						宗教信仰
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_religion">
							<option value="无">请选择宗教信仰</option>
							<c:forEach items="${ list6 }" var="religion">
							<option value="${religion.attribute_name }">${religion.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						政治面貌
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1" name="human_party">
						<option value="群众">请选择政治面貌</option>
							<c:forEach items="${ list7 }" var="party">
							<option value="${party.attribute_name }">${party.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						身份证号码
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_id_card" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						社会保障号码
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_society_security_id" class="INPUT_STYLE2">
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						年龄
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="human_age" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						学历
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1" name="human_educated_degree">
						<option value="本科">请选择学历</option>
							<c:forEach items="${ list8 }" var="degree">
							<option value="${degree.attribute_name }">${degree.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						教育年限
					</td>
					<td class="TD_STYLE2">
						<select  Class="SELECT_STYLE1"
							name="human_educated_years">
							<option value="12">请选择教育年限</option>
							<c:forEach items="${ list9 }" var="educatedyears">
							<option value="${educatedyears.attribute_name }">${educatedyears.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						学历专业
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_educated_major">
							 <option value="计算机">请选择学历专业</option>
							<c:forEach items="${ list10 }" var="educatedmajor">
							<option value="${educatedmajor.attribute_name }">${educatedmajor.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						薪酬标准
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="salary_standard_name">
							<option value="0/未定义">0/未定义</option>
						</select>
					</td>
					<td class="TD_STYLE1">
						开户行
					</td>
					<td class="TD_STYLE2">
							<input type="text" name="human_bank" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						帐号
					</td>
					<td class="TD_STYLE2">
							<input type="text" name="human_account" class="INPUT_STYLE2">
					</td>
					<td class="TD_STYLE1">
						登记人
					</td>
					<td class="TD_STYLE2">
						<input type="text" name="register" class="INPUT_STYLE2"
							value="${userName}" readonly="true" />
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						建档时间
					</td>
					<td class="TD_STYLE2">
					<input type="text" name="regist_time" class="INPUT_STYLE2" value="${currentTime}"
						 readonly="true"/>
					</td>
					<td class="TD_STYLE1">
						特长
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1"
							name="human_speciality">
							 <option value="java">请选择特长</option>
							<c:forEach items="${ list11 }" var="speciality">
							<option value="${speciality.attribute_name }">${speciality.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						爱好
					</td>
					<td class="TD_STYLE2">
						<select Class="SELECT_STYLE1" name="human_hobby">
						<option value="唱歌">请选择爱好</option>
							<c:forEach items="${ list12 }" var="hobby">
							<option value="${hobby.attribute_name }">${hobby.attribute_name }</option>
						</c:forEach>
						</select>
					</td>
					<td class="TD_STYLE1">
						&nbsp;
					</td>
					<td class="TD_STYLE2">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						个人履历
					</td>
					<td colspan="7" class="TD_STYLE2">
							<textarea name="human_histroy_records"
						class="TEXTAREA_STYLE1" rows="4"></textarea>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						家庭关系信息
					</td>
					<td colspan="7" class="TD_STYLE2">
						<textarea name="human_family_membership"
						class="TEXTAREA_STYLE1" rows="4"></textarea>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">
						备注
					</td>
					<td colspan="7" class="TD_STYLE2">
						<textarea name="remark"
						class="TEXTAREA_STYLE1" rows="4"></textarea>
					</td>
				</tr>
			</table>
		</form>
	</body>
<script type="text/javascript">
Calendar.setup ({inputField : "date_start", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_start", singleClick : true, step : 1});
Calendar.setup ({inputField : "date_end", ifFormat : "%Y-%m-%d", showsTime : false, button : "date_end", singleClick : true, step : 1});
</script>
</html>

<!-- <iframe  width=0 height=0></iframe> -->
