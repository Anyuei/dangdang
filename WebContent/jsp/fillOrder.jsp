<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>

	<head>                                                                
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>确认订单</title>
	</head>
	<style>
		.orderDetail {
			
			height: 150px;                 
			background-color: #fff;
			border-radius: 8px;
			border-style: solid;
			border-right-width: 4px;
			border-width: 4px;

			border-color: #ff000080;
		}
		
		.orderDetail font {                            
		                                
			font-size: larger;
			font-weight: 800;
		}
		.container{
			background-color:#ffcece33;                                   
			no-repeat;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
			background-attachment: fixed;
			background-position: center bottom;
			border-radius: 0px 0px 30px 30px;
		}
		#main_logo{
			background-color: #ffcece33;  
		}
	</style>

	<body>

		<%@ include file="/jsp/header.jsp"%>
		<div class="container">
			<div class="row-fluid">
				<div class="row">
					<div class="col-lg-12">
					<p>
						选择地址： <select id="address" onchange="change();">
							<option value="0" <s:if test="id==0">selected="selected"</s:if>>
								填写新地址</option>

							<s:iterator value="addressList">

								<option value='<s:property value="id"/>'
									<s:if test="id==addr.id">selected="selected"</s:if>>
									<s:property value="detail_address" />
								</option>

							</s:iterator>

						</select>
					</p>
					
					</div>
					<br>
					<div class="col-lg-3">
						<form action="${pageContext.request.contextPath}/SendOrder">
							<div class="form-group">
								<label for="receiptname">收货人：</label> <input type="text" class="form-control" placeholder="请输入收货人姓名" name="receiptname" required="required">
							</div>
							<div class="form-group">
								<label for="receiptTel">收货人手机号码：</label> <input type="text" class="form-control" placeholder="请输入收货人手机号码" name="receiptTel" required="required"> <small class="form-text text-muted">We'll
								never share your telephone with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="receiptAddress">收货地址：</label> <input type="text" class="form-control" placeholder="请输入收货人地址" name="receiptAddress" required="required">
							</div>
						
									
						<div class="col-lg-12">
							<div class="col-lg-6">
								<input type="hidden" name="orderPrice" value= "<s:property value='#parameters.orderPrice'/>"/>
								<button type="submit" class="btn btn-danger">提交订单</button>
							</div> 
							<div class="col-lg-6">
								<button type="reset" class="btn btn-info btn-block" value="重置">重置</button>
							</div> 
						</div> 
			   			</form>
					</div>
					<div class="col-lg-9">
						<div class="col-lg-3">图片1</div>
						<div class="col-lg-3">品名</div>
						<div class="col-lg-2">数量</div>
						<div class="col-lg-2">价格</div>
						<div class="col-lg-2">小计</div>
						<br>
						<s:iterator value="#session.orderItems">
							<div class="col-lg-12">
								<div class="col-lg-3 orderDetail">
									<img src="${pageContext.request.contextPath}<s:property value='product.ipath.imgPaths[0]'/>" style="height: 98%;" />
								</div>
								<div class="col-lg-3 orderDetail">
									<font><s:property value="product.pName" /></font>
								</div>

								<div class="col-lg-2 orderDetail">
									<font><s:property value="pCounts" /></font>
								</div>

								<div class="col-lg-2 orderDetail">
									<font><s:property value="pPrice" /></font>
								</div>

								<div class="col-lg-2 orderDetail">
									<font><s:property value="formatDouble(pCounts*pPrice)" /></font>
								</div>
								<br>
							</div>
						</s:iterator>
					</div>
				</div>
			</div>

			</form>
			<hr>
		</div>
		<br>

		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</body>
	<script type="text/javascript">
			function change(){
				var id = document.getElementById("address").value;
				location.href="${path}/addr/ShowAddr?id="+id+"";
			}
	</script>

</html>