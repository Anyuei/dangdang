<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>恭喜你加入当当网会员</title>
	</head>
	<style>
		body {
			background-image: url(${pageContext.request.contextPath}/images/500510127.jpg);
			no-repeat;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
			background-attachment: fixed;
			background-position: center bottom;
			color: #fff;
			background-color: #333;
			font-family: 'microsoft yahei', Arial, sans-serif;
		}
	</style>

	<script type="text/javascript">
		onload = function() {
			setInterval(go, 1000);
		};
		var x = 5; //利用了全局变量来执行
		function go() {
			x--;
			if(x > 0) {
				document.getElementById("second").innerHTML = x; //每次设置的x的值都不一样了。
			} else {
				location.href = 'jsp/index.jsp';
			}
		}
	</script>

	<body align="center">

		<div id="" style="height: 800px;padding-top: 20%;" align="middle">
			<hr />
			<div><img src="${pageContext.request.contextPath}/images/welcome.png" /></div>
			<div>
				<font size="7" id="second">5</font>秒后进入主页</div>
			<hr />
		</div>
	</body>

</html>