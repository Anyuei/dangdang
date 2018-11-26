<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<body>
	<div class="row">
		<s:iterator value="#request.products">
			<div class="col-lg-3" style="width: 208px; padding-bottom: 10px;">
				<div align="center">
					<a
						href="${pageContext.request.contextPath}/ViewProductDetails?pId=<s:property value="pId"/>"><img
						src="${pageContext.request.contextPath}<s:property value="%{ipath.imgPaths[0]}"/>"
						style="width: 100%; height: 200px;" /></a>
				</div>

				<div class="row" align="center">
					<div>
						销量：
						<s:property value="sales" />
					</div>
					<div align="center">
						<s:property value="pName" />
					</div>

					<div align="center">
						价格：
						<s:property value="price" />
					</div>
					<div class="addCart" align="center">
						<div>
							<a
								href='${pageContext.request.contextPath}/CartAdd?pId=<s:property value="pId"/>'>
								添加购物车 </a>
						</div>
					</div>

				</div>
			</div>
		</s:iterator>
	</div>
</body>
</html>