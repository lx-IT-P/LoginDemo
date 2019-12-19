<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
  		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>用戶管理</title>
		<link rel="stylesheet" type="text/css" href="./static/admin/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="./static/admin/css/admin.css"/>
	</head>
	<body>
	
		<div class="main-layout" id='main-layout'>
			<!--侧边栏-->
			<div class="main-layout-side">
				<div class="m-logo">
				</div>
				<ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
				 
				  <li class="layui-nav-item">
				    <a href="article-list.jsp" target="iframe"><i class="iconfont">&#xe608;</i>用户信息管理</a>
				    <dl class="layui-nav-child">
				    <form action="/select" method="post">
				      <dd><a href="article-list.jsp" target="iframe"  data-url="article-list.jsp" data-id='3' data-text="用户管理"><button type="submit" display:none>查詢用戶 </button><!-- <span class="l-line"></span>查詢用戶 --></a></dd>
				      <dd><a href="article-detail.jsp" target="iframe"  data-url="article-detail.jsp" data-id='3' data-text="用户管理"><span class="l-line"></span>添加用戶</a></dd>
				      </form>
				    </dl>
				  </li>
				 
				  <li class="layui-nav-item">
				    <a href="admin-info.jsp" target="iframe" data-url="admin-info.jsp" data-id='5' data-text="个人信息"><i class="iconfont">&#xe606;</i>修改密码</a>
				  </li>
				 
				</ul>
			</div>
			<!--右侧内容-->
			<div class="main-layout-container">
				<!--头部-->
				<div class="main-layout-header">
					<div class="menu-btn" id="hideBtn">
						<a href="javascript:;">
							<span class="iconfont">&#xe60e;</span>
						</a>
					</div>
					<ul class="layui-nav" lay-filter="rightNav">
					 
					
					  <li class="layui-nav-item"><a href="../../index.jsp">退出</a></li>
					</ul>
				</div>
				<!--主体内容-->
				<div class="main-layout-body">
					<!--tab 切换-->
					<div class="layui-tab layui-tab-brief main-layout-tab" lay-filter="tab" lay-allowClose="true">
					  <ul class="layui-tab-title">
					    <li class="layui-this welcome">后台主页</li>
					  </ul>
					  <div class="layui-tab-content">
					    <div class="layui-tab-item layui-show" style="background: #f5f5f5;">
					    	<!--1-->
					    	<iframe src="welcome.jsp" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0"></iframe>
					    	<!--1end-->
					    </div>
					  </div>
					</div>
				</div>
			</div>
			<!--遮罩-->
			<div class="main-mask">
			</div>
		</div>
		<script type="text/javascript">
			var scope={
				link:'./welcome.jsp'
			}
		</script>
		<script src="./static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="./static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script src="./static/admin/js/main.js" type="text/javascript" charset="utf-8"></script>
		
	</body>
</html>
