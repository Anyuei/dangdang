package dangdang.beans;
import java.io.Serializable;
/**
 * 	CartItem.java
 *	 @author anyunpei
 *	2018年10月19日下午8:39:46
 *	装了购物车 商品实体bean
 */
public class CartItem implements Serializable{
	private Product product; //存放一个商品对象
	private Integer amount; // 总数 
	private Double totalPrice;  // 总价
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public CartItem(Product product, Integer amount, Double totalPrice) {
		super();
		this.product = product;
		this.amount = amount;
		this.totalPrice = totalPrice;
	}
	public CartItem() {
		super();

	}
	public String toString() {
		return "CartItem [product=" + product + ", amount=" + amount
				+ ", totalPrice=" + totalPrice + "]";
	}
}
