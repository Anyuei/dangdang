package dangdang.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionSupport;

import dangdang.beans.Product;
import dangdang.serviceImpl.ProductServiceImpl;
/**
 * ViewProductDetails.java
 * @author anyunpei
 *2018��10��21������11:15:44
 * �鿴��Ʒ����
 */
@Controller
@Scope("prototype")
@RequestMapping("/ViewProductDetails")
public class ViewProductDetails{
	@Resource
	private ProductServiceImpl productServiceImpl;
	private String pId;
	private Product product;
	public String execute() throws Exception {
		product = productServiceImpl.queryById(pId);
		return "forword:/jsp/productDetails.jsp";
	}
	public String getPId() {
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
}
