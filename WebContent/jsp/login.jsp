<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>欢迎登录当当网</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.0.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css" />
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.png" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
	</head>
	<style>
		.head {
			margin: 12px auto 14px;
			height: 60px;
		}
		
		.head img {
			margin: 7px 0 0 0;
		}
		
		.improve .info {
			color: #787878;
		}
		
		.improve .icon {
			display: inline-block;
			width: 15px;
			height: 19px;
			background: url("../images/improve.png") no-repeat 0 0;
			vertical-align: middle;
		}
		
		.improve {
			font-size: 12px;
			float: right;
			margin-top: 34px;
		}
	</style>

	<body background="">
		<div class="container">
		<!--copyright anyunpei  -->
		<!-- 登录头部 -->
		<div class="head">
			<a href="">
				<img src="${pageContext.request.contextPath}/images/logo.png">
			</a>
			<div class="improve">
				<span class="icon"></span>
				<a class="info" href="http://survey.dangdang.com/html/2526.html" target="_blank">“登录页面“改进建议</a>
			</div>
		</div>
		<!-- 登录主体 -->
		
			<div class="row-fluid">
				<div class="span5 offsetHalf block" style="padding: 40px 30px 40px 30px; height: auto;">
					<div class="row">
						<!--广告页面-->
						<div class="col-md-8" style=" position:relative; ">
							<img src="${pageContext.request.contextPath}/images/一书一世界.png" style="margin-top: 25%;margin-left: 20%;position:absolute;width: 100%;"/>
							<a href=""></a><img src="${pageContext.request.contextPath}/images/loginMain.jpg" style="width: 100%;border-radius: 20px 200px 20px 200px;"/>
						</div>
						<!--登录框-->
						<div class="col-md-4" style=" margin-top: 50px; ">
							<form action="${pageContext.request.contextPath}/Login" method="post">
								<div class="form-group">
									<label for="username">用户名</label> <input type="text" class="form-control" value='${param.usernameCookie}' placeholder="请输入用户名" name="username" required="required">

								</div>
								<div class="form-group">
									<label for="password">密码</label> <input type="password" class="form-control" value='${cookie.password.value}' placeholder="请输入密码" name="password" required="required"> <small id="emailHelp" class="form-text text-muted">We'll never
										share your password with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="Captcha">请输入验证码</label> <img src="${pageContext.request.contextPath}/Kaptcha.jpg" alt="图片加载失败" width="100" height="40" /> <input type="text" class="form-control" name="kaptcha" required="required">
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input" id="exampleCheck1" name="rememberMe"> <label class="form-check-label" for="exampleCheck1">记住用户名和密码</label>

								</div>
								<button type="submit" class="btn btn-primary" value="登陆">登录</button>
								<button type="reset" class="btn btn-primary" value="重置">重置</button>
							</form>
						</div>
					</div>
				</div>
				
				
			</div>
			<!-- 网站尾部 -->
			<%@include file="/jsp/footer.jsp" %>
		</div>
		
	</body>

</html>