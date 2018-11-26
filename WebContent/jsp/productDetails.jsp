<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<<style>
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
		.bookName h1 {
		    line-height: 34px;
		    overflow: hidden;
		    color: #d11010;
		    font-size: 28px;
		    margin: 0 auto;
		    font-weight:800;
		}
		.bookImg img{
			height:320px;
		}
		.bookImg img:hover{
			box-shadow: #ff5050 0px -1px 16px 7px;
		}
</style>
<body>
	<%@ include file="/jsp/header.jsp"%>
	<div class="container">
		<div class="row-fluid">
			<div class="row">
				<br>                                   
				<button type="submit" class="btn" onclick="javascript:history.back(-1);">返回上一步</button>
				<hr>
				<div class="col-lg-3 bookImg">
					<img
						src='${pageContext.request.contextPath}<s:property value="#request.product.ipath.imgPaths[0]"/>' />
				</div>
				<!-- 第一行 -->
				<div class="col-lg-9">
					
					<div class="col-lg-12 bookName">
						<h1>
						商品名：
						<s:property value="#request.product.pName" />
						</h1>
					</div>
					<hr>
				</div>
				<!-- 第二行 -->
				<div class="col-lg-9" >
					
					<div class="col-lg-3">
						价格：
						<s:property value="#request.product.price" />
						元
					</div>
					<div class="col-lg-9">
						销量：
						<s:property value="#request.product.sales" />
					</div>
					<div class="col-lg-12">
						<div class="col-lg-6"></div>
						<div class="addCart col-lg-4" align="center">
							<div>
								<a href='${pageContext.request.contextPath}/CartAdd?pId=<s:property value="pId"/>'>
									添加购物车
								</a>
							</div>
						</div>
						<div class="col-lg-2"></div>
					</div>
				</div>
				
				<!--第三行-->
				
				

			</div>
			<hr/>
			<div class="row">
				<div class="col-lg-12">
					
					
					<dl>
					  <dt>图书简介：</dt>
					  <br>
						
					  <dd><s:property value="#request.product.pDetials" /></dd>
					</dl>
					
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>