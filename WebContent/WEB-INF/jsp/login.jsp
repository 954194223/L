<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	<link href="${pageContext.request.contextPath}/css/style.css" type=text/css rel=stylesheet>
	<link href="${pageContext.request.contextPath}/css/boot-crm.css" type=text/css rel=stylesheet>
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />	
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images/bg1.jpg">
<div ALIGN="center">
<table border="0" width="1140px" cellspacing="0" cellpadding="0"
                                                           id="table1">
	<tr>
		<td height="93"></td>
		<td></td>
	</tr>
	<tr>
   <td background="${pageContext.request.contextPath}"
		width="740" height="412">
   </td>
   <td class="login_msg" width="400" align="center">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: auto; margin: 0px auto;">
		  <legend>
		     <font style="font-size:15px" face="宋体">
		          
		     </font>
		  </legend> 
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
		<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          账&nbsp;号：<input id="usercode" type="text" name="usercode" />
          <br /><br />
          密&nbsp;码：<input id="password" type="password" name="password" />
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">新建</a>         
          &nbsp;&nbsp;&nbsp;
          <input class="btn btn-primary btn-lg" data-toggle="modal"  type="submit" value="登录" />
		  <input class="btn btn-primary btn-lg" data-toggle="modal" data-target="#newUserDialog"  type="button" value="注册" />      
		 </form>
	 </fieldset>
	</td>
	</tr>
</table>
</div>

<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>

<script type="text/javascript">
function clearUser(){
	$("#new_usercode").val("");
	$("#new_password").val("");
	$("#new_username").val("");
	$("#new_email").val("");
}
function createUser(){
	
	$.post("<%=basePath%>user/registuser.action",
			$("#new_user_form").serialize(),function(data){
		if(data =="OK"){
			alert("用户注册成功");
			window.location.reload();
		}else{
			alert("用户注册失败，用户名已被使用！");
			window.location.reload();
		}
	});	
}
function createCustomer() {
	$.post("<%=basePath%>customer/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
function clearCustomer() {
    $("#new_customerName").val("");
    $("#new_customerFrom").val("")
    $("#new_custIndustry").val("")
    $("#new_custLevel").val("")
    $("#new_linkMan").val("");
    $("#new_phone").val("");
    $("#new_mobile").val("");
    $("#new_zipcode").val("");
    $("#new_address").val("");
}
</script>
<div class="modal fade" id="newUserDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">请输入注册信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_user_form">
					<div class="form-group">
						<label for="new_usercode" class="col-sm-2 control-label">
						    学生学号
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_usercode" placeholder="请输入学号" name="user_code" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_username" class="col-sm-2 control-label">学生姓名</label>
						<div class="col-sm-10"> 
							<input type="text" class="form-control" id="new_username" placeholder="请输入姓名" name="user_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_email" class="col-sm-2 control-label">邮箱</label> 
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_email" placeholder="请输入邮箱" name="user_email" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">密码</label> 
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_password" placeholder="请输入密码" name="user_password" />
						</div>
					</div>					
				</form>			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createUser()">注册客户</button>
			</div>
		</div>
	</div>				
</div> 
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">运动会报名</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    选手名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_customerName" placeholder="选手名称" name="stu_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">选手身份</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom" name="status">
								<option value="">--请选择--</option>
								<option value ="teacher">老师</option>
								<option value="student">学生</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">运动项目</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_custIndustry"  name="spt_event">
								<option value="">--请选择--</option>
								<option value="run">50米短跑</option>
								<option value="run">100米短跑</option>
								<option value="run">1000米长跑</option>
								<option value="run">5000米长跑</option>
								<option value="jump">立定跳远</option>
								<option value="Pull_up">引体向上</option>
								<option value="three_jump">三级跳</option>
								<option value="Shot_put">铅球</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custLevel" style="float:left;padding:7px 15px 0 27px;">选手性别</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_custLevel" name="stu_sex">
								<option value="">--请选择--</option>
								<option value="boy">男</option>
								<option value="girl">女</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">学生系别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_linkMan" placeholder="学生系别" name="stu_dept" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">学生班级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_phone" placeholder="学生班级" name="stu_class" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">审核状态</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_examine" name="examine">
								<option value="">--请选择--</option>
								<option value="girl">未审核</option>
							</select>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createCustomer()">创建客户</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>
