<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>客户管理-BootCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">BOOT运动员管理系统 v3.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>系统提示</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>有一个新的报名表。</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 运动员管理管理
				    </a>
				</li>
				<!-- <li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 客户拜访
				    </a>
				</li> -->
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">运动员管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/customer/list.action">
					<div class="form-group">
						<label for="customerName">选手姓名</label> 
						<input type="text" class="form-control" id="customerName" 
						                   value="${stuName }" name="stuName" />
					</div>
					<div class="form-group">
						<label for="customerFrom">选手身份</label> 
						<select	class="form-control" id="customerFrom" name="sTatus">
							<option value="">--请选择--</option>
							<c:forEach items="${identityType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == sTatus}">selected</c:if>>
								    ${item.dict_sport_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custIndustry">运动项目</label> 
						<select	class="form-control" id="custIndustry"  name="sptEvent">
							<option value="">--请选择--</option>
							<c:forEach items="${eventType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == sptEvent}"> selected</c:if>>
								    ${item.dict_sport_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custLevel">性别</label>
						<select	class="form-control" id="custLevel" name="stuSex">
							<option value="">--请选择--</option>
							<c:forEach items="${sexType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == stuSex}"> selected</c:if>>
								    ${item.dict_sport_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custLevel">审核状态</label>
						<select	class="form-control" id="custLevel" name="eXamine">
							<option value="">--请选择--</option>
							<c:forEach items="${exAminetype}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == eXamine}"> selected</c:if>>
								    ${item.dict_sport_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">客户信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>运动员名称</th>
								<th>性别</th>
								<th>职业</th>
								<th>学生系别</th>
								<th>运动项目</th>
								<th>成绩</th>
								<th>审核状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.stu_id}</td>
									<td>${row.stu_name}</td>
									<td>${row.stu_sex}</td>
									<td>${row.status}</td>
									<td>${row.stu_dept}</td>
									<td>${row.spt_event}</td>
								    <td>${row.score}</td>
								    <td>${row.examine}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.stu_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.stu_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/customer/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建运动员信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    选手名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_customerName" placeholder="客户名称" name="stu_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">选手身份</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom" name="status">
								<option value="">--请选择--</option>
								<c:forEach items="${identityType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == sTatus}">selected</c:if>>
									${item.dict_sport_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">运动项目</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_custIndustry"  name="spt_event">
								<option value="">--请选择--</option>
								<c:forEach items="${eventType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == sptEvent}"> selected</c:if>>
									${item.dict_sport_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custLevel" style="float:left;padding:7px 15px 0 27px;">选手性别</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_custLevel" name="stu_sex">
								<option value="">--请选择--</option>
								<c:forEach items="${sexType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == stuSex}"> selected</c:if>>
									${item.dict_sport_name }</option>
								</c:forEach>
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
						<label for="new_mobile" class="col-sm-2 control-label">成绩</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="成绩" name="score" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_zipcode" class="col-sm-2 control-label">审核状态</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_zipcode" placeholder="审核状态" name="examine" />
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
<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改运动员信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="edit_stu_id" name="stu_id"/>
					<div class="form-group">
						<label for="edit_customerName" class="col-sm-2 control-label">选手名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_customerName" placeholder="运动员名称" name="stu_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_customerFrom" style="float:left;padding:7px 15px 0 27px;">选手身份</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_customerStatus" name="status">
								<option value="">--请选择--</option>
								<c:forEach items="${identityType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == sTatus}"> selected</c:if>>
									${item.dict_sport_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custIndustry" style="float:left;padding:7px 15px 0 27px;">运动项目</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="edit_sptEvent"  name="spt_event">
								<option value="">--请选择--</option>
								<c:forEach items="${eventType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == sptEvent}"> selected</c:if>>
									${item.dict_sport_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">选手性别</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_stusex" name="stu_sex">
								<option value="">--请选择--</option>
								<c:forEach items="${sexType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == stuSex}"> selected</c:if>>
									${item.dict_sport_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_linkMan" class="col-sm-2 control-label">学生系别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_studept" placeholder="学生系别" name="stu_dept" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_phone" class="col-sm-2 control-label">学生班级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_stuclass" placeholder="学生班级" name="stu_class" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_mobile" class="col-sm-2 control-label">成绩</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_score" placeholder="成绩" name="score" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_zipcode" class="col-sm-2 control-label">审核状态</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_examine" placeholder="审核状态" name="examine" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">审核状态</label>
						<div class="col-sm-10">
							<select	class="form-control" id="edit_examine" name="examine">
								<option value="">--请选择--</option>
								<c:forEach items="${exAminetype}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == eXamine}"> selected</c:if>>
									${item.dict_sport_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
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
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建客户窗口中的数据
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
	// 创建客户
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
	// 通过id获取修改的客户信息
	function editCustomer(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>customer/getCustomerById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_stu_id").val(data.stu_id);
	            $("#edit_customerName").val(data.stu_name);
	            $("#edit_customerStatus").val(data.status);
	            $("#edit_sptEvent").val(data.spt_event);
	            $("#edit_stusex").val(data.stu_sex);
	            $("#edit_studept").val(data.stu_dept);
	            $("#edit_stuclass").val(data.stu_class);
	            $("#edit_score").val(data.score);
	            $("#edit_examine").val(data.examine);
	        
	        }
	    });
	}
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data =="OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteCustomer(id) {
	    if(confirm('确实要删除该客户吗?')) {
	$.post("<%=basePath%>customer/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>