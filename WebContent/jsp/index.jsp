<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
		.addCart div{
			width: 100px;
			height:30px;
			background-color: #CE0000;
			border-radius: 10px;
			padding: 5px;
		}
		.addCart div:hover{
			background-color: #ff3600;
		}
		.addCart div a{
			color: #F1F8FF;
		}
		.addCart div a:hover{
			color: #F1F8FF;
		}
		.category{
			height: 30px;
			background-color: #e0e0e0;
		}
	</style>
	<body>
		<%@ include file="/jsp/header.jsp" %>
		<div class="container">
			<div class=""></div>
			<div class="row-fluid">
				<div class="span5 offsetHalf block" style="padding: 40px 30px 40px 30px; height: auto;">                    
					<div class="row">
						<div class="col-md-3">
							<div class="col-md-12 category">
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
							</div>
							<div class="col-md-12 category">
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
							</div>
							<div class="col-md-12 category">
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
							</div>
							<div class="col-md-12 category">
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
								<div class="col-md-4">
									
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="row">
								<s:iterator value="#request.products" >
									<div class="col-md-3" style="width:208px;padding-bottom: 10px;"> 
								<div align="center"><img src="${pageContext.request.contextPath}<s:property value="%{ipath.imgPaths[0]}"/>" style="width: 100%;height: 200px;" /></div>
								
								<div class="row" align="center">
									<div><s:property value="id" />
									</div>
									<div align="center"><s:property value="pName" />
									</div>
			
									<div align="center"><s:property value="price" />
									</div>
									<div class="addCart" align="center">
										<div>
											<a href='${pageContext.request.contextPath}/admin/CartAction?productId=<s:property value="id"/>'>
												添加购物车
											</a>
										</div>
									</div>

								</div>
							</div>
								</s:iterator>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp" %>
	</body>

</html>