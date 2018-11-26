package dangdang.beans;

import java.io.Serializable;
/**
 * OrderItem.java
 * @author anyunpei
 *2018年10月25日下午10:36:54
 *订单项实体
 */
public class OrderItem implements Serializable{
	private String order_id;//订单项所属订单id
	private Product product;//产品
	private Integer pCounts;//产品数量
	private Double pPrice;//产品价格
	public OrderItem() {
	}
	
	public OrderItem(String order_id, Product product, Integer pCounts, Double pPrice) {
		super();
		this.order_id = order_id;
		this.product = product;
		this.pCounts = pCounts;
		this.pPrice = pPrice;
	}

	@Override
	public String toString() {
		return "OrderItem [order_id=" + order_id + ", product=" + product + ", pCounts=" + pCounts + ", pPrice="
				+ pPrice + "]";
	}

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getPCounts() {
		return pCounts;
	}

	public void setPCounts(Integer pCounts) {
		this.pCounts = pCounts;
	}

	public Double getPPrice() {
		return pPrice;
	}

	public void setPPrice(Double pPrice) {
		this.pPrice = pPrice;
	}
	
}
