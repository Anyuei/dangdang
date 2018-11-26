package dangdang.beans;
import java.io.Serializable;
/**
 * 	CartItem.java
 *	 @author anyunpei
 *	2018��10��19������8:39:46
 *	װ�˹��ﳵ ��Ʒʵ��bean
 */
public class CartItem implements Serializable{
	private Product product; //���һ����Ʒ����
	private Integer amount; // ���� 
	private Double totalPrice;  // �ܼ�
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
