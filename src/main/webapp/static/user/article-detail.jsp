<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>ç½ç«åå°ç®¡çæ¨¡ç</title>
		<link rel="stylesheet" type="text/css" href="./static/admin/layui/css/layui.css" />
		<link rel="stylesheet" type="text/css" href="./static/admin/css/admin.css" />
	</head>

	<body>
		<div class="page-content-wrap">
				 <div class="layui-tab-item layui-show">
				  	<form class="layui-form" action="/add" method="post" style="width: 90%;padding-top: 20px;">
					  <div class="layui-form-item">
					    <label class="layui-form-label">用户名：</label>
					    <div class="layui-input-block">
					      <input type="text" name="username"  autocomplete="off" class="layui-input" placeholder="请输入用戶名" >
					    </div>
					  </div>
					 
					  <div class="layui-form-item">
					    <label class="layui-form-label">密码：</label>
					    <div class="layui-input-block">
					      <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
					    </div>
					  </div>
					  
					  <div class="layui-form-item">
					    <div class="layui-input-block">
					     <button type="submit" id="doLogin" tabindex="4" class="btn btn-primary">添加</button>
					    </div>
					  </div>
					</form>
				  </div>
				</div>
		</div>
		<script type="text/javascript">
			var SCOPE = {
				static: '/static',
				index: '/admin/category/index2.jsp',
				add: 'add.html',
				save: '/admin/category/save.jsp',
				edit: 'add.html',
				updateEdit: '/admin/category/updateedit.jsp',
				status: '/admin/category/updatestatus.jsp',
				del: '/admin/category/del.jsp',
				delAll: '/admin/category/deleteall.jsp',
				listOrderAll: '/admin/category/listorderall.jsp'
			}
		</script>
		<script src="./static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="./static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
		<script>
			
			layui.use(['form', 'jquery', 'laydate', 'layer', 'laypage', 'dialog',  'element', 'upload', 'layedit'], function() {
				var form = layui.form(),
					layer = layui.layer,
					$ = layui.jquery,
					laypage = layui.laypage,
					laydate = layui.laydate,
					layedit = layui.layedit,
					element = layui.element(),
					dialog = layui.dialog;

				//è·åå½åiframeçnameå¼
				var iframeObj = $(window.frameElement).attr('name');
				//åå»ºä¸ä¸ªç¼è¾å¨
				var editIndex = layedit.build('LAY_demo_editor', {
					tool: ['strong' //å ç²
						, 'italic' //æä½
						, 'underline' //ä¸åçº¿
						, 'del' //å é¤çº¿
						, '|' //åå²çº¿
						, 'left' //å·¦å¯¹é½
						, 'center' //å±ä¸­å¯¹é½
						, 'right' //å³å¯¹é½
						, 'link' //è¶é¾æ¥
						, 'unlink' //æ¸é¤é¾æ¥
						, 'image' //æå¥å¾ç
					],
					height: 100
				})
				//å¨é
				form.on('checkbox(allChoose)', function(data) {
					var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
					child.each(function(index, item) {
						item.checked = data.elem.checked;
					});
					form.render('checkbox');
				});
				form.render();

				layui.upload({
					url: 'ä¸ä¼ æ¥å£url',
					success: function(res) {
						console.log(res); //ä¸ä¼ æåè¿åå¼ï¼å¿é¡»ä¸ºjsonæ ¼å¼
					}
				});
			});
		</script>
	</body>

</html>