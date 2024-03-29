<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="description" content="此代码内容为超萌的猫头鹰登录界面" />
<title>超萌的猫头鹰登录界面</title>

<link rel="stylesheet" href="../static/assets/css/jq22.css"  th:href="@{/assets/css/jq22.css}"  />
<link rel="stylesheet" href="../static/assets/css/font-awesome.min.css" th:href="@{/assets/css/font-awesome.min.css}"/>
<script src="../static/assets/js/jquery-1.10.2.min.js" th:src="@{/assets/js/jquery-1.10.2.min.js}"></script>
<script src="../static/assets/js/bootstrap.min.js" th:src="@{/assets/js/bootstrap.min.js}"></script>
<script src="../static/assets/js/jquery.messager.js" th:src="@{/assets/js/jquery.messager.js}"></script>
   
</head>
<body>
<!-- begin -->
<div id="login">
    <div class="wrapper">
        <div class="login">
            <form action="login" method="post" class="container offset1 loginform">
                <div id="owl-login">
                    <div class="hand"></div>
                    <div class="hand hand-r"></div>
                    <div class="arms">
                        <div class="arm"></div>
                        <div class="arm arm-r"></div>
                    </div>
                </div>
                <div class="pad">
                    <input type="hidden" name="_csrf" value="9IAtUxV2CatyxHiK2LxzOsT6wtBE6h8BpzOmk="/>
                    <div class="control-group">
                        <div class="controls">
                            <label for="userName" class="control-label"><i class="fa fa-user" aria-hidden="true"></i></label>
                            <input id="userName" type="text" name="username" placeholder="账号" tabindex="1" autofocus="autofocus" class="form-control input-medium" />
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label for="password" class="control-label"><i class="fa fa-key" aria-hidden="true"></i></label>
                            <input id="password" type="password" name="password" placeholder="密码" tabindex="2" class="form-control input-medium" />
                        </div>
                    </div>
                </div>
                <div class="form-actions"><a href="#" tabindex="5" class="btn pull-left btn-link text-muted"></a><a href="#" tabindex="6" class="btn btn-link text-muted">Sign Up</a>
                    <button type="submit" id="doLogin" tabindex="4" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- end -->
</body>
</html>