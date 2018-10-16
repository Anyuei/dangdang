package dangdang.beans;

import java.io.Serializable;
import java.util.List;
/**
 * Product.java
 * @author anyunpei
 *2018��10��13������7:55:41
 *
 */
public class Product implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String pId;
	private String pName;
	private String pDetials;//����
	private Integer sales;//����
	private Double price;//�۸�
	private List<ImgPath> imgPaths;//ͼƬ·��
    
	public String getPId() {
		System.out.println("1111111111111111111111111111111111"+pId);
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public String getPName() {
		return pName;
	}
	public void setPName(String pName) {
		this.pName = pName;
	}
	public String getPDetials() {
		return pDetials;
	}
	public void setPDetials(String pDetials) {
		this.pDetials = pDetials;
	}
	public Integer getSales() {
		return sales;
	}
	public void setSales(Integer sales) {
		this.sales = sales;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public List<ImgPath> getImgPaths() {
		return imgPaths;
	}
	public void setImgPaths(List<ImgPath> imgPaths) {
		this.imgPaths = imgPaths;
	}
	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pDetials=" + pDetials + ", sales=" + sales + ", price="
				+ price + ", imgPaths=" + imgPaths + "]";
	}
	public Product(String pId, String pName, String pDetials, Integer sales, Double price, List<ImgPath> imgPaths) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pDetials = pDetials;
		this.sales = sales;
		this.price = price;
		this.imgPaths = imgPaths;

	}
	public Product() {
		super();
	}
	
}
