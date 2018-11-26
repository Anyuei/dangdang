package dangdang.beans;

import java.util.List;

public class Order {
	private String order_id;//订单id
	private String order_uid;//订单所属用户
	private String order_receipt_uName;//订单收货姓名
	private String order_uAddress;//订单地址
	private String order_receipt_uTel;//订单收货电话
	private List<OrderItem> orderItems;//订单商品项
	
	public Order() {
	}

	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", order_uid=" + order_uid + ", order_receipt_uName="
				+ order_receipt_uName + ", order_uAddress=" + order_uAddress + ", orderItems=" + orderItems + "]";
	}

	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getOrder_uid() {
		return order_uid;
	}
	public void setOrder_uid(String order_uid) {
		this.order_uid = order_uid;
	}
	public String getOrder_uAddress() {
		return order_uAddress;
	}
	public void setOrder_uAddress(String order_uAddress) {
		this.order_uAddress = order_uAddress;
	}
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	public String getOrder_receipt_uName() {
		return order_receipt_uName;
	}
	public void setOrder_receipt_uName(String order_receipt_uName) {
		this.order_receipt_uName = order_receipt_uName;
	}
	
}
