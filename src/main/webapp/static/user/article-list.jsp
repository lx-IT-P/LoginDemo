<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="com.snbc.usermanagement.serviceimpl.ServiceUserImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%
     	ServiceUserImpl select = new ServiceUserImpl();
          HashMap<String,String> map  = select.selectUser();
         	request.setAttribute("list", map);
     %>
<!DOCTYPE html>
<html class="iframe-h">
	<head>
		<meta charset="UTF-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>网站后台管理模版</title>
		<link rel="stylesheet" type="text/css" href="./static/admin/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="./static/admin/css/admin.css" />
	</head>

	<body>
        	
		<div class="wrap-container clearfix">
				<div class="column-content-detail">
					<form class="layui-form" action="">
					
					</form>
					<div class="layui-form" id="table-list">
						<table class="layui-table" lay-even lay-skin="nob">
							<colgroup>
								<col width="50">
								<col class="hidden-xs" width="50">
								<col class="hidden-xs" width="100">
								<col>
								<col class="hidden-xs" width="150">
								<col class="hidden-xs" width="150">
								<col width="80">
								<col width="150">
							</colgroup>
							<thead>
								<tr>
									<!-- <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th> -->
									
									<th class="hidden-xs">用户名称</th>
									<th class="hidden-xs">用户密码</th>
									<th>状态</th>
									
								</tr>
							</thead>
							<tbody>
			<c:forEach items="${requestScope.list}" var="keyword" varStatus="id">
								<tr>
									
									<td class="hidden-xs"> ${keyword.key}</td>
									<td class="hidden-xs">${keyword.value}</td>
									<td><button class="layui-btn layui-btn-mini layui-btn-normal">正常</button></td>
									
								</tr>
								<!-- <tr>
									
									<td class="hidden-xs">test2</td>
									<td class="hidden-xs">123456</td>
									<td><button class="layui-btn layui-btn-mini layui-btn-normal">正常</button></td>
									
								</tr>
								<tr>
									
									<td class="hidden-xs">test3</td>
									<td class="hidden-xs">654321</td>
									<td><button class="layui-btn layui-btn-mini layui-btn-normal">正常</button></td>
									
								</tr> -->
								 </c:forEach>
							</tbody>
						</table>
						<div class="page-wrap">
							<ul class="pagination">
								
								<li class="active"><span>1</span></li>
								
							</ul>
						</div>
					</div>
				</div>
		</div>
		<script src="./static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="./static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>