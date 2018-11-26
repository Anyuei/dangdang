<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>                                     
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支付订单</title>
</head>
	<style>
		body {
			background-image: url(${pageContext.request.contextPath}/images/payImageBg.jpg);
			no-repeat;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
			background-attachment: fixed;
			background-position: center bottom;
			color: #fff;
			background-color: #333;
		}
		#header_container_up {
			background-color: #ff36004d;
		}
		#navi_container{ 
			background-color: #ff36004d;                        
		}  
		#main_logo{
			background-color: #fff9;  
		}
	</style>

<body>
	<%@ include file="/jsp/header.jsp"%>
	<div class="container">
		<div class="row-fluid">
			<div class="row">
				<div class="col-lg-12" style="height: 50px;"></div>
				<div class="col-lg-12" style="height: 400px;"> 
				
				<img src="${pageContext.request.contextPath}/images/payImage.jpg" style="height: 100%;"/>
				
				</div>
				<div class="col-lg-12" style="height: 70px;">
					                     
					<div class="col-lg-2"><h1><font  style="font-weight: 800; color: #f9f9fa;">请支付</font></h1></div>
					<div class="col-lg-3"><h1><font  style="font-weight: 800; color: red;"><s:property value="#request.orderPrice"/></font>
					<font  style="font-weight: 500; color: #f9f9fa;">元</font></h1></div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>