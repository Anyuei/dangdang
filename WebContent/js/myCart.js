	window.onload = countPrice();//用于初始加载时，总价的总价的计算

/**
 * 删除商品时 用于确认
 * 
 * @returns
 */
	function sumbit_sure() {
		var b = 0;/* 用于判断用户是否选择了需要删除的商品 */
		$('.pline').each(function() {
			if (this.checked) {/* 当有被选择的商品 b置1 */
				b = 1;
			}
		})
		if (b == 1) {/* 有商品被选择 提醒用户是否确认删除 */
			var c = confirm("确定从购物车中删除所选商品么?");
			if (c == true) {
				return true;
			} else {
				return false;
			}
		} else {/* 没有商品被选择 提醒用户选择需要删除的商品 */
			alert("您还没有选择不想买的商品啦~");
			return false;
		}
		countPrice();
	}
	/**
	 * 结算时用于 把需要的结算的产品id 拼接于地址栏①，用于支付订单时，查看 商品与 订单总价②
	 * 
	 * @returns
	 */
	function countPId() {
		countPrice();
		var url = "?";
		var b = 0;/* 用于判断用户是否选择了商品 结算 */
		$('.pline').each(function() {
			if (this.checked) {
				b = 1;
				url = url + "&pIds=" + this.value; /*①*/
			}
		})
		url = url + "&orderPrice="
				+ document.getElementById("selectedPrice").innerHTML;/*②*/
		if (b == 1) {
			if(document.getElementById("selectedPrice").innerHTML==0){
				alert("(╥╯^╰╥)您还未选择商品的购买数量哦！");
				return;
			}
			window.location.href = "/dangdang/FillOrder" + url;
		} else {
			alert("(づ￣3￣)づ╭❤～请选择一个您需要结算的商品");
		}
	
	}
	/**
	 * 选择框变换时，重新计算被选择的 商品总价的总价
	 * @returns
	 */
	$(function() {
		var s = $('.pline');
		s.each(function(i) {  /*alert(i);*/
			$(this).click(function() {
				countPrice();
			});
		});
	})
	/**
	 * 计算被选中商品总价的总价
	 * @returns
	 */
	function countPrice() {
		var orderPrice = 0;
		$('.totalPrice')/*获取每一个商品项*/
				.each(
						function() {
							if (this.parentNode.firstChild.firstChild.checked/*获取被选择的项*/
									&& this.innerHTML != null) {/*切总价的总价不为空*/
								orderPrice = (parseFloat(orderPrice) + parseFloat(this.innerHTML))
										.toFixed(2);/*每个被选中的 商品总价相加 得订单总价（也就是被选中的商品总价的总价）*/
							}
						})
		document.getElementById("selectedPrice").innerHTML = orderPrice;/*把订单总价赋给 购物车被选中商品总价的总价位置*/
	}
	/**
	 * 当用户点击加减时的操作，在这里为修改当前商品总价①，以及总价的总价②，以及修改数量显示③
	 * @param o
	 * @returns
	 */
	function changeNum(o) {
		var maxCounts = 999; /* 用户最大购买数量*/
		var counts = o.parentNode.firstChild.nextSibling.value /* 获取总数*/
		var price = o.parentNode.previousSibling.innerText;  /*获取价格*/
		var pId = o.parentNode.parentNode.firstChild.firstChild.value;/*获取产品id*/
		console.log("修改的商品项为" + pId);
		/* 加减判断*/
		if (o.value == "+" && counts < maxCounts) {/*o.value为当前节点的value值，在这里可能为 + 或 -*/
			$.ajax({
				type : "post",
				async : true,
				url : 'changeNumber',
				data : {
					pId : pId,
					minusOrAdd : 'add'/*operation*/
				}
			});/*ajax异步向Action申请修改 商品数量，需要传递的参数为：需要修改的商品pId，以及修改的操作 operation*/
			o.parentNode.firstChild.nextSibling.value = ++counts;/*③*/
		} else if (o.value == "-" && counts > 0) {
			$.ajax({
				type : "post",
				async : true,
				url : 'changeNumber',
				data : {
					pId : pId,
					minusOrAdd : 'minus'/*operation*/
				}
			});
			o.parentNode.firstChild.nextSibling.value = --counts;/*③*/
		}
		/* 赋总价*/
		o.parentNode.nextSibling.innerText = (counts * price).toFixed(2);/*①*/
		countPrice();/*②*/
	}
	/**
	 * 当用户直接修改数量时的操作，有 修改 商品总价①，
	 * 修改session中商品的数量②（这里是使用ajax调用action修改），
	 * 修改商品总价的总价③
	 * 最关键的当然有 判断输入的字符是不是数字，不是数字置1，置1操作这里参考自淘宝④
	 * @param o
	 * @returns
	 */
	function changeCounts(o) {
		var counts = o.value; /*获取总数*/
		var pId = o.parentNode.parentNode.firstChild.firstChild.value;
		var price = o.parentNode.previousSibling.innerText;/* 获取价格*/
		if(o.value.length==1){
			o.value=o.value.replace(/[^1-9]/g,'')
		} else {
			o.value=o.value.replace(/\D/g,'')
		}
		if(o.value>999){
			o.value = 999;
		}
		counts = o.value;
		$.ajax({
			type : "post",
			async : true,
			url : 'changeNumber',
			data : {
				pId : pId,
				counts : counts
			}
		});/*②*/
		o.parentNode.nextSibling.innerText = (counts * price).toFixed(2);/*①*/
		countPrice();/*③*/
	}
	/* 全选 或 全取消选中 */
	function changeAll() {
		console.log($('#selectAll').get(0));
		$('.pline').each(function() {
			this.checked = $('#selectAll').get(0).checked;
		})
		countPrice()
	}
	/* 反选 */
	function reverseAll() {
		$('.pline').each(function() {
			 /*将checkbox 的状态置为与当前相反的状态*/
			this.checked = !(this.checked);
		});
		countPrice()
	}
	/* 删除选中行 */
	function removeLine() {
		$('.pline').each(function() {
			if (this.checked) {
				this.parentNode.parentNode.remove();
			}
		});
		countPrice()
	}
