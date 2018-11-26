<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<c:set var="path" value="${pageContext.request.contextPath }">
</c:set>
<html>
<head>
<meta charset="utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/jquery-1.11.0.min.js"></script>

<title>我的当当购物车</title>
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
		.cartImg img{
			height:150px;

		}
		.cartImg img:hover{
			box-shadow: #ff5050 0px -1px 16px 7px;
		}
		.myCart_form{
			border: 5px solid red;;
			background-color:#ffffffe6; 
			border-width: 20px;
			border-color: #ff515166;
			align-content:center;
			width:100%;
			border-radius: 0px 0px 20px 20px;
			box-shadow: #ff5050 0px 25px 55px -23px;
			
		}
		.myCart_tb{
			width:100%;
			border-radius: 20px;
			
		}
		#oneLine{
			border: 2px solid red;;
		}
	</style>
<body>
	<!--导航 头部  -->
	<%@ include file="/jsp/header.jsp"%>
	<div class="container">
			<div class="row-fluid" align="center">
				<form action="${path }/CartDelete" onsubmit="return sumbit_sure()" class="myCart_form">
					<table class="myCart_tb" > 
						<tbody id="tbody">
							<tr bgcolor="#FF3600" align="center">
								<td>
									<input type="checkbox" name="" id="selectAll" value="" onclick="changeAll()" />全选
									<input type="checkbox" name="" id="selectAll" value="" onclick="reverseAll()" />反选
								</td> 
								<td><b>图片</b></td>                                    
								<td><b>商品名称</b></td>
								<td><b>商品单价</b></td>                                                                  
								<td><b>数量</b></td>
								<td><b>总价</b></td>			
							</tr>
							<s:iterator value="#session.cart">
								<tr align="center" id="oneLine"><td><input type="checkbox" name="pIds"
										value="<s:property value="value.product.pId"/>" class="pline" /></td>
									<td class="cartImg"><img
										src="${path }<s:property value="%{value.product.ipath.imgPaths[0]}"/>" /></td>
									<td><s:property value="value.product.pName"/></td>
									<td><s:property value="value.product.price"/></td><td><input type="button" name="" value="-" onclick="changeNum(this)" /><input type="text" name="" id="counts" value="<s:property value="value.amount"/>" style="width: 50px;" onkeychange='changeCounts(this)' onkeyup='changeCounts(this)' /><input type="button" name="" value="+" onclick="changeNum(this)" />
									</td><td style="width:60px;" class="totalPrice"><s:property value="value.totalPrice"/></td>
								</tr>
							</s:iterator>
							<tr align="left">
								<td >
							       <button type="submit" class="btn btn-danger">删除所选商品</button>
							    </td>  
							    <td >  
							    </td>   
							    <td >                                                             	                
							    <td >
							       <a href="${pageContext.request.contextPath}/jsp/index.jsp"><button type="button" class="btn">继续购物</button></a>
							       
							       <a href="javascript:void(0)" onclick="countPId()"><button type="button" class="btn btn-danger">结 算 </button></a>
							    </td>                               
							    </td>                    
								<td colspan="2" align="right">
							                       总价为：
							       <h4 id="selectedPrice"></h4>
							    </td>
							</tr>
						</tbody>
					</table> 
				</form>
			</div>
		</div>   

	<br>
	
	<%@ include file="/jsp/footer.jsp"%>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/myCart.js"></script>

</html>