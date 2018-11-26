package dangdang.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionSupport;

import dangdang.beans.Category;
import dangdang.service.ProductService;
/**
 * CategoryAction.java
 * @author anyunpei
 *2018年10月18日上午11:38:59
 * 查询所有种类
 */
@Controller
@Scope("prototype")
public class CategoryAction{
	private List<Category> categories;
	private String categoryId;
	@Autowired
	private ProductService productService;
	/**
	 * 查询所有产品种类
	 * @return
	 */
	@RequestMapping("/Category")
	public String AllCategory() {
		categories = productService.queryAllCategory();
		return "AllCategory";
		
	}
	/**
	 * 通过id查询种类
	 * @return
	 */
	
	public String findCategoryById() {
		categories = productService.queryCategoryById(categoryId);
		categoryId=categories.get(0).getCategoryID();
		return "category";
		
	}
	public List<Category> getCategories() {
		return categories;
	}
	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}
	
	public String getCategory_id() {
		return categoryId;
	}
	public void setCategory_id(String categoryId) {
		this.categoryId = categoryId;
	}
	public String toString() {
		return "CategoryAction [categories=" + categories + "]";
	}
	
}
