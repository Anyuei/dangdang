package dangdang.action;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dangdang.beans.Product;
import dangdang.serviceImpl.ProductServiceImpl;

public class MainPage extends ActionSupport{
	private String productName;
	private Integer currentPage;
	private Double lowPrice;
	private Double highPrice;
	List<Product> products;
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer results=0;
		if (currentPage==null) {
			currentPage=1;
		}
		if (productName==null) {
			productName="";
		}
		try {
			products = new ProductServiceImpl().queryAll(productName,lowPrice, highPrice, currentPage); 
			results = new ProductServiceImpl().queryAllNumber(productName,lowPrice, highPrice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("结果集为"+results);
		request.setAttribute("pages", (int) Math.ceil(1.0 * results / 3));
		return "findByPriceRangeSuccess";
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Double getLowPrice() {
		return lowPrice;
	}
	public void setLowPrice(Double lowPrice) {
		this.lowPrice = lowPrice;
	}
	public Double getHighPrice() {
		return highPrice;
	}
	public void setHighPrice(Double highPrice) {
		this.highPrice = highPrice;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
}
