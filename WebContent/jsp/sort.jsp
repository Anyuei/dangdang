<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
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
		.container{
	background-color: #fffc;
}
	</style>

		<% String category= request.getParameter("category"); 
		String currentPage= request.getParameter("currentPage"); 
		String father_categorieID= request.getParameter("father_categorieID"); 
		request.setAttribute("category",category); 
		request.setAttribute("currentPage",currentPage); 
		request.setAttribute("father_categorieID",father_categorieID); 
		%>

	<body>
	<%@ include file="/jsp/header.jsp" %>
	

	</div> 
		<div class="container">
			<div class="row-fluid">
				<div class="span5 offsetHalf block" style="padding: 40px 30px 40px 30px; height: auto;">                    
					<div class="row">
						<div class="col-lg-3">
							 <s:action name="SecondCategory" namespace="/" executeResult="true"></s:action> 
						</div>
						<div class="col-lg-9">
							<s:action name="Sort" namespace="/" executeResult="true"></s:action> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp" %>
	</body>

</html>