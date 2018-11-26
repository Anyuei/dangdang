<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>当当网</title>

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
.addCart div {
	width: 100px;
	height: 30px;
	background-color: #CE0000;
	border-radius: 10px;
	padding: 5px;
}

.addCart div:hover {
	background-color: #ff3600;
}

.addCart div a {
	color: #F1F8FF;
}

.addCart div a:hover {
	color: #F1F8FF;
}

.category {
	height: 30px;
	background-color: #e0e0e0;
}

.betterSales h1 {
	line-height: 34px;
	overflow: hidden;
	color: #d11010;
	font-size: 28px;
	margin: 0 auto;
	font-weight: 800;
}
.container{
	background-color: #fffc;
}                        
</style>
<body>
	<%@ include file="/jsp/header.jsp"%>
	<div class="container">
		<div class="row-fluid">
			<div class="span5 offsetHalf block"
				style="padding: 40px 30px 40px 30px; height: auto;">
				<div class="row">
					<div class="col-lg-3">
						<c:import url="Category"></c:import>

					</div>
				<c:import url="QueryAllBySales"></c:import>
				<c:import url="QueryAll"></c:import>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>

</html>