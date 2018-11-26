<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>当当网</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.0.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css" />
		<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.png" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
	</head>
	<style>
		a {
			text-decoration: none;
			color: #718f6b;
			font-weight: 800;
		}
		
		a:hover {
			text-decoration: none;
			color: #ff3600;
		}
		
		#header_container_up {
			box-shadow:#ff3600 2px -1px 1px 1px;
			padding-top: 5px;
			background-color: #ff3600;
			height: 40px;
		}
		#header_container_down {
			box-shadow: #ff3600 0px 0px 13px 1px;
			position: relative;
		}
		.maxWidth {
			border-radius: 12px 12px 0px 0px;
			width: 1200px;
			margin: 0px auto;
			background-color: #f9f9f9;
			height: 35px;
		}
		
		#homepage_click {

			margin-left: 20px;
			margin-top: 7px;
		}
		
		#address_select {}
		
		body {
			margin: 0px;
			padding: 0px;
		}
		
		#main_logo {
			width: 1200px;
			margin: 0 auto;
			position: relative;
			background-color: #fff9;
		}
		
		#main_logo img {
			float: left;
			margin-top: 30px;
			margin-left: 30px;
			width: 200px;
			
		}
		.input-group{
			width: 400px;
		}
		.input-group .form-control{
			margin: 40px;
			height: 40px;
		}
		.input-group-btn button {
			width: 48px;
			height: 40px;
			border: none;
			background: url(${pageContext.request.contextPath}/images/header/head_sprite.png) no-repeat 0 -346px;
			cursor: pointer;
			position: absolute;
		}
		#navi_container{ 
			box-shadow:#ff3600 0px 3px 2px 2px;
			background-color: #ff3600;
			height: 30px;                                  
		}                                                                       
		.navi{
			border-radius: 0px 0px 12px 12px;
			width: 1200px;
			margin: 0 auto;
			background-color: #f9f9f9;
			height: 25px;
			bottom: 0px;
		}
		.navbar-nav > li > a {
    		padding: 7px 15px;
        }
	</style>                      

	<body>                 
		<!--copyright 安云沛 2018/10/15-->
		<!--头部容器-->                                                 
		<div id="header_container_up">
			<!--头部主体-->
			<div class="maxWidth">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<div id="homepage_click" class="navbar-form navbar-left">
					<a href="${pageContext.request.contextPath}/jsp/index.jsp">当当主页</a>
					
				</div>
				
				<ul class="nav navbar-nav navbar-right">
						<c:if test="#session.username!=null">
							<li> 
								<a>当当书城  欢 迎 您  ${sessionScope.username}！</a>
							</li>
							<li> 
								<a href="${pageContext.request.contextPath}/MyGro?username=${sessionScope.username}" target="_blank">个人信息</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/LogOut" target="_blank">注销</a>
							</li>
						</c:if>
						<c:if test="#session.username==null">
							<li>
								<a href="${pageContext.request.contextPath}/jsp/myCart.jsp" target="_blank">我的购物车</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/jsp/login.jsp" target="_blank">欢迎登录</a>
							</li>
							<li>
							<a href="${pageContext.request.contextPath}/jsp/login.jsp?regist=1" target="_blank" style="border-radius: 0px 5px 0px 0px;">注册</a>
							</li>
						</c:if>

				</ul>
				</div>
			</div>
			
		</div>
		<!--头部搜索容器-->
		<div id="header_container_down">
			<!--头部搜索主体-->
			<div id="main_logo" class="row">
				<div class="col-md-4">
				<a href="${pageContext.request.contextPath}/jsp/index.jsp">
					<img src="${pageContext.request.contextPath}/images/header/659702143649717114.png">
				</a>
					
				</div>
				
				<div class="col-md-8">
					<form action="${pageContext.request.contextPath}/FindByPriceRange?currentPage=1" method="post">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search for...">
							<span class="input-group-btn">
        					<button class="btn btn-default" type="button"></button>
      						</span>
						</div>
						
					</form>
				</div>
			</div>
		</div>
		<!--主导航-->
		<div id="navi_container">
			<!--主导航主体-->
			<div class="navi" >
				
			</div>
		</div>
	</body>
	<script>
	</script>
</html>