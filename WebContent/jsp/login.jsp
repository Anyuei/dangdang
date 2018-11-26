<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		.change{
			font-weight: bolder;
			font-size: 18px;
			color: white;
			padding-top: 4px;
			height: 30px;
			text-align: center;
			background-color: #FF6600;
			border-radius: 10px 10px 0px 0px;
		}
		.change:hover{
			background-color: #ff2832;
		}
		.subre{
			width: 100%;
			font-weight: bolder;
			font-size: 18px;
			color: white;
			padding-top: 4px;
			height: 30px;
			text-align: center;
			background-color: #FF6600;
			border-radius: 0px 0px 10px 10px;
		}
		.subre:hover{
			background-color: #ff2832;
		}
		.redius{
			height: 100%;
			border-radius: 40px 20px 60px 20px;
		}
		#ad{
			transition: width 3s;
		}
		#ad img:hover{
			width: 70%;
			position:relative; 
			
		}
		#register{
			padding: 10px 50px;
			display: none;
			background-color: rgb(255, 237, 242);
			box-shadow: #ffd2dd 3px -3px 1000px 13px;
		}
		#login{
			padding: 10px 50px 26px; 
			display: block;
			background-color: rgb(255, 237, 242);
			box-shadow: #ffd2dd 3px -3px 1000px 13px;
		}
		.form-control{
			box-shadow: rgb(255, 179, 197) 0px 0px 17px 5px;
		}
	</style>
	
	<body background="">
		<div class="container">                               
			<!--copyright anyunpei  -->
			<!-- 登录头部 -->
			<div class="head">                   
				<a href="${pageContext.request.contextPath}/jsp/index.jsp">
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
						<div class="col-md-8" id="ad"  onmouseover="hide()" onmouseleave="show()">
							<img src="${pageContext.request.contextPath}/images/一书一世界.png" style="margin-top: 25%;margin-left: 20%;position:absolute;width: 100%;" />
							<img src="${pageContext.request.contextPath}/images/loginMain.jpg" style="width: 100%;border-radius: 20px 200px 20px 200px;box-shadow: rgb(255, 179, 197) -55px 52px 14px -1px;" />
						</div>
						<!--登录框-->
						<div class="col-md-4" id="loginRegist" style="height: 30PX;">
								<div class="col-md-6" onclick="showLogin()">
									<div class="change">登录</div>
								</div>
								<div class="col-md-6" onclick="showRegist()">
									<div class="change">注册</div>
								</div>
							</div>
						
						<div class="col-md-4 redius" id="login" style="padding: 10px 50px 26px; display: block;background-color: #ffedf2;;box-shadow: #ffd2dd 3px -3px 1000px 13px;">
								<c:if test="#session.KaptchaError!=null">
										<small class="form-text text-muted">
										${sessionScope.KaptchaError}！
										</small>
								</c:if>
								<c:if test="#session.LoginError!=null">
										<small class="form-text text-muted">
										${sessionScope.LoginError}！
										</small>
								</c:if>
							<form action="${pageContext.request.contextPath}/Login"  method="post">
								<div class="form-group">
									<label for="username">用户名</label> 
									<input type="text" class="form-control"  value='${cookie.username.value}' placeholder="请输入用户名" name="username" required="required">

								</div>
								<div class="form-group">
									<label for="password">密码</label> 
									<input type="password" class="form-control" value='${cookie.password.value}' placeholder="请输入密码" name="password" required="required"> 
									<small id="emailHelp" class="form-text text-muted">We'll never
										share your password with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="Captcha">请输入验证码</label> 
									<img src="${pageContext.request.contextPath}/Kaptcha.jpg" alt="图片加载失败" width="100" height="40" /> 
									<input type="text" class="form-control" name="kaptcha" required="required">
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input" id="exampleCheck1" name="rememberMe"> 
									<label class="form-check-label" for="exampleCheck1">记住用户名和密码</label>
										<c:if test="#sessionScope.KaptchaError!=null">
												<small class="form-text text-muted">
												${sessionScope.KaptchaError}！
												</small>
										</c:if>
										<c:if test="#sessionScope.LoginError!=null">
												<small class="form-text text-muted">
												${sessionScope.LoginError}！
												</small>
										</c:if>
								</div>
								<button type="submit" class="btn btn-info btn-block" value="登陆">登录</button>
								<button type="reset" class="btn btn-info btn-block" value="重置">重置</button>
							</form>
						</div>
						<!--注册框-->
						<div class="col-md-4 redius" id="register">
						<form action="${pageContext.request.contextPath}/Register"
							method="post">
							<!--username  -->
							<div class="form-group">
								<label for="nickname">用户名</label> 
								<input type="text"
									class="form-control" 
									placeholder="请输入昵称" 
									name="nick"
									id="nick"                     
									onmouseleave="checkUsername()"
									required="required" >                            
									<span id="check"></span>
							</div>
							<!--password  -->
							<div class="form-group">
								<label for="password">密码</label> 
								<input type="password"
									class="form-control" 
									placeholder="请输入密码" 
									name="password"
									required="required"> 
									<small class="form-text text-muted">
									We'll never share your password with anyone else.
									</small>
							</div>
							<!--realname  -->
							<div class="form-group">
								<label for="username">真实姓名</label> 
								<input type="text"
									class="form-control" 
									placeholder="请输入真实姓名" 
									name="username"
									required="required"> 
									<small class="form-text text-muted">
									We'll never share your realname with anyone else.
									</small>
							</div>
							<!-- tel --> 
							<div class="form-group">
								<label for="tel">电话</label> 
								<input type="text"
									class="form-control" 
									placeholder="请输入电话号码" 
									name="tel"
									required="required"> 
									<small class="form-text text-muted">
									We'll never share your telephone with anyone else.
									</small>
							</div>

							<!--address  -->
							<div class="form-group">
								<label for="email">邮箱</label> 
								<input type="text"
									class="form-control" value='${cookie.email.value}'
									placeholder="请输入邮编" name="email" 
									required="required">
							</div>
							<button type="submit" class="btn btn-info btn-block" value="登陆">注册</button>
							<button type="reset" class="btn btn-info btn-block" value="重置">重置</button>
						</form>
						</div>
					</div>
				</div>

			</div>
			<!-- 网站尾部 -->
			<%@include file="/jsp/footer.jsp" %>
		</div>

	</body>
	<script type="text/javascript">
		function showLogin(){
			$('#login').css('display','block');
			$('#register').css('display','none');
		}
		function showRegist(){
			$('#login').css('display','none');
			$('#register').css('display','block');
		}
		function hide(){
			var w=$('.col-md-4').width;
			$('.col-md-4').css('width',w*1.2);

			
		}
	function hide(){
			$('.login').css('display','none');
			$('#register').css('display','none');
			$('#loginRegist').css('display','none');
			
		} 
	function show(){
			$('#login').css('display','block');
			$('#loginRegist').css('display','block');
		} 
	function checkUsername(){
		var nickname= $('#nick').val();
		if(nickname!=""){		
			$.ajax({
				type : "post",
				async : true,
				url : 'checkUsername',
				data : {
					nickname : nickname,
				},
				success:function(data){
					$('#check').text(data);
				}
			})
		}else{                                                                   
			$('#check').text("");
		}
	}
	</script>
</html>