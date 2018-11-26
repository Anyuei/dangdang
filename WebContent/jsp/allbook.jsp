<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>allbook</title>
</head>
<body>
	<div class="col-lg-9 betterSales">
		<h1>所有图书</h1>
		<hr>
	</div>
	<br>

	<div class="col-lg-9">
		<div class="row">
			<c:forEach items="${request.products}" var="per">
				<div class="col-lg-3" style="width: 208px; padding-bottom: 10px;">
					<div align="center">
						<a
							href="${pageContext.request.contextPath}/ViewProductDetails?pId=${per.pId}/>"><img
							src="${pageContext.request.contextPath}${per.ipath.imgPaths[0]}/>"
							style="width: 100%; height: 200px;" /></a>
					</div>

					<div class="row" align="center">
						<div>
							销量：
							${per.sales}
						</div>
						<div align="center">
							${per.pName}
						</div>

						<div align="center">
							价格：
							${per.price}
							元
						</div>
						<div class="addCart" align="center">
							<div>
								<a
									href='${pageContext.request.contextPath}/CartAdd?pId=${per.pId}'>
									添加购物车 </a>
							</div>
						</div>

					</div>
				</div>
			</c:forEach> 
		</div>
		<div align="center">
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<!-- 当前总页面小于5页时，直接遍历输出总页码 -->
					<c:if test="#request.pages<=5">
						<!-- 当前页大于第一页时，上一页按钮显示 -->
						<c:if test="#request.allbookPage>1">
							<li><a
								href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage='${request.allbookPage-1}'${sessionScope.searchMessage}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>

						<c:forEach begin="1" end="${request.pages}" var="p">
							<c:choose>
								<c:when test="#request.allbookPage==#p.index+1">
									<li><span style="background-color: deepskyblue;"> <a
											href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage='${p.index+1}'/>${sessionScope.searchMessage}">'${p.index+1}'
										</a>
									</span></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage='${p.index+1}'${sessionScope.searchMessage}">'${p.index+1}'
									</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="#request.allbookPage<#request.pages">
							<li><a
								href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage='${request.allbookPage+1}'${sessionScope.searchMessage}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
					</c:if>

					<!--当总页面大于5页时，只显示五页，根据当前页，输出当前页的前后两页，和当前页，共五页  -->
					<!-- 当前页大于第一页时，上一页按钮显示 -->

					<c:if test="#request.pages>5">
						<c:if test="#request.allbookPage>1">
							<li><a
								href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage=${requestScope.allbookPage-1}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>
						<!--当前页小于3页时 不使当前页始终处于5页的中间页 -->
						<c:if test="#request.allbookPage<3">
							<c:forEach begin="1" end="5" var="p">
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage=${p}">${p}</a>
								</li>
							</c:forEach>
							<li><a
								href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage=${requestScope.allbookPage+1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>

						<!--当前页大于等于3页时 且 小于 最后3页时 使当前页始终处于5页的中间页 -->
						<c:if
							test="#request.allbookPage>=3&&#request.pages-2>#request.allbookPage">

							<c:forEach begin="${requestScope.allbookPage-2}"
								end="${requestScope.allbookPage+2}" var="p">
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage=${p}">${p}</a>
								</li>
							</c:forEach>
							<li><a
								href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage=${requestScope.allbookPage+1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
						<c:if
							test="#request.allbookPage>=3&&#request.allbookPage>=#request.pages-2">

							<c:forEach begin="${requestScope.pages-4}"
								end="${requestScope.pages}" var="p">
								<li><a
									href="${pageContext.request.contextPath}/jsp/index.jsp?allbookPage=${p}">${p}</a>
								</li>
							</c:forEach>
						</c:if>
					</c:if>
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>