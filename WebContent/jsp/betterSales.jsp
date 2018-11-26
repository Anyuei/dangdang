<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>betterSales</title>
</head>
<body>
		<div class="col-lg-9 betterSales">
			<h1>热销排行</h1>
			<hr>
		</div>
		<br>
		<div class="col-lg-9">
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
								元
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
			<div align="center">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<!-- 当前总页面小于5页时，直接遍历输出总页码 -->
						<s:if test="#request.pages<=5">
							<!-- 当前页大于第一页时，上一页按钮显示 -->
							<s:if test="#request.betterSalesPage>1">
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=<s:property value=" #request.betterSalesPage-1 "/>${sessionScope.searchMessage}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</s:if>

							<s:iterator begin="1" end="#request.pages" status="p">
								<s:if test="#request.betterSalesPage==#p.index+1">
									<li><span style="background-color: deepskyblue;"> <a
											href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=<s:property value="#p.index+1"/>${sessionScope.searchMessage}"><s:property
													value="#p.index+1" /> </a>

									</span></li>
								</s:if>
								<s:else>
									<li><a
										href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=<s:property value=" #p.index+1 "/>${sessionScope.searchMessage}"><s:property
												value="#p.index+1" /> </a></li>
								</s:else>
							</s:iterator>
							<s:if test="#request.betterSalesPage<#request.pages">
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=<s:property value=" #request.betterSalesPage+1 "/>${sessionScope.searchMessage}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</s:if>
						</s:if>

						<!--当总页面大于5页时，只显示五页，根据当前页，输出当前页的前后两页，和当前页，共五页  -->
						<!-- 当前页大于第一页时，上一页按钮显示 -->

						<s:if test="#request.pages>5">
							<s:if test="#request.betterSalesPage>1">
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=${requestScope.betterSalesPage-1}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</s:if>
							<!--当前页小于3页时 不使当前页始终处于5页的中间页 -->
							<s:if test="#request.betterSalesPage<3">
								<c:forEach begin="1" end="5" var="p">
									<li><a
										href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=${p}">${p}</a>
									</li>
								</c:forEach>
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=${requestScope.betterSalesPage+1}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</s:if>

							<!--当前页大于等于3页时 且 小于 最后3页时 使当前页始终处于5页的中间页 -->
							<s:if
								test="#request.betterSalesPage>=3&&#request.pages-2>#request.betterSalesPage">

								<c:forEach begin="${requestScope.betterSalesPage-2}"
									end="${requestScope.betterSalesPage+2}" var="p">
									<li><a
										href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=${p}">${p}</a>
									</li>
								</c:forEach>
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=${requestScope.betterSalesPage+1}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</s:if>
							<s:if
								test="#request.betterSalesPage>=3&&#request.betterSalesPage>=#request.pages-2">

								<c:forEach begin="${requestScope.pages-4}"
									end="${requestScope.pages}" var="p">
									<li><a
										href="${pageContext.request.contextPath}/jsp/index.jsp?betterSalesPage=${p}">${p}</a>
									</li>
								</c:forEach>
							</s:if>
						</s:if>
					</ul>
				</nav>
			</div>
		</div>


</body>
</html>