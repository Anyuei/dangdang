<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    	<style>
		.footer_nav_box a, .footer_nav_box {
    		color: #8c8c8c;
    		font-size: 12px;
    		text-decoration: none;
		}
		.footer_nav_box {
		    border-top: 1px solid #ebebeb;
		    width: 100%;
		    _width: expression(this.scrollWidth < 960 ? "960px" : "auto");
		    min-width: 960px;
		    padding: 17px 0 50px;
		}
		.footer_nav_box .footer_nav {
		    text-align: center;
		    line-height: 20px;
		    padding-bottom: 17px;
		    padding-top: 25px;
		}
		.clear {
		    clear: both;
		    font-size: 0;
		    height: 0;
		    line-height: 0;
		    overflow: hidden;
		}
		.footer_nav_box .footer_icon {
		    padding: 10px 0 0 340px;
		    padding-left: 340px;
		    width: 640px;
		    margin: 0 auto;
		    height: 77px;
		}
		.footer_copyright {
		    padding: 10px 0 0 0;
		    margin: 0 auto;
		    float: none;
		    width: auto;
		    text-align: center;
		    color: #8c8c8c;
		}
		.footer_nav_box .footer_copyright {
		    line-height: 20px;
		    text-align: center;
		    width: 960px;
		    margin: 0 auto;
		}
		.footer_nav_box .validator, .footer_nav_box .knet {
		    float: left;
		    display: inline;
		    padding: 15px 5px 15px;
		    width: 135px;
		    height: 47px;
		}
	</style>
    <body>
		<div class="footer_nav_box">
			<div class="footer_nav">
				<a href="http://static.dangdang.com/topic/2227/176801.shtml" target="_blank" rel="nofollow">公司简介</a><span class="sep">|</span>
				<a href="http://zhaopin.dangdang.com" target="_blank">诚聘英才</a><span class="sep">|</span>
				<a href="http://static.dangdang.com/topic/744/200778.shtml" target="_blank">手机当当</a><span class="sep">|</span>
				<a href="http://union.dangdang.com/" target="_blank">网站联盟</a><span class="sep">|</span>
				<a href="http://outlets.dangdang.com/merchants_open" target="_blank">当当招商</a><span class="sep">|</span>
				<a href="http://misc.dangdang.com/groupbuy/Default.aspx" target="_blank" rel="nofollow">机构销售</a><span class="sep">|</span>
				<a href="http://blog.dangdang.com/" target="_blank">官方Blog</a>
				<script>
					var setTo = null;

					function showghotsearch() {
						clearTimeout(setTo);
						document.getElementById("hot_search_content").style.display = "block";
					}

					function hidehotsearch() {
						setTo = setTimeout(function() {
							document.getElementById("hot_search_content").style.display = "none";
						}, 100)
					}
				</script>
			</div>
			<div class="footer_copyright"><span>Copyright (C) 当当网 2004-2017, All Rights Reserved</span></div>
			<div class="footer_copyright"><span><a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP证041189号</a></span><span class="sep">|</span><span>出版物经营许可证 新出发京批字第直0673号</span><span class="sep">|</span><span>食品流通许可证：SP1101011010021855(1-1)</span><br><span>互联网药品信息服务资格证编号：(京)-非经营性-2012-0016</span><span class="sep">|</span><span>京公网安备110101000001号</span></div>
			<!-- 有三个icon的时候加footer_icon2 -->
			<div class="footer_icon footer_icon2" style="padding-left: 55px;">
				<div class="validator">
					<a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001051000098" target="_blank" class="footer_img"><img src="${pageContext.request.contextPath}/images/footer/validate.gif"></a>
				</div>
				<div class="validator">
					<a href="http://bj429.com.cn/" target="_blank" class="footer_img"><img src="${pageContext.request.contextPath}/images/footer/7d593c48-48f6-4fc9-85e0-7d6e10dfc2a2.png"></a>
				</div>
				<div class="validator">
					<a id="_pingansec_bottomimagesmall_brand" href="http://si.trustutn.org/info?sn=302161014024825726885&amp;certType=1" target="_blank"><img src="${pageContext.request.contextPath}/images/footer/brand_128_47.png"></a>
				</div>

			</div>
			<div class="clear"></div>
		</div>
 	</body>
</html>