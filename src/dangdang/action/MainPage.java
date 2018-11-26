package dangdang.action;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dangdang.beans.Category;
import dangdang.beans.Product;
import dangdang.serviceImpl.ProductServiceImpl;
@Controller
@Scope("prototype")
@RequestMapping("/main")
public class MainPage{
	private Integer betterSalesPage;
	private Integer categoryBookPage;
	private String categoryId;
	private String father_categorieID;
	@Resource
	private ProductServiceImpl productServiceImpl;
	List<Product> products;
	List<Category> categories;
	
	public String queryAllOrderBySales(
			@RequestParam String productName,
			@RequestParam Double highPrice,
			@RequestParam Double lowPrice,
			@RequestParam Integer betterSalesPage) throws Exception {
		Integer pageContains=4;//每页能显示的商品数
		HttpServletRequest request = ServletActionContext.getRequest();
		Integer results=0;
		if (betterSalesPage==null) {
			betterSalesPage=1;
		}
		if (productName==null) {
			productName="";
		}
		try {
			products = productServiceImpl.queryAllOrderBySales(productName,lowPrice, highPrice, betterSalesPage,pageContains); 
			results = productServiceImpl.queryAllNumber(productName,lowPrice, highPrice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("pages", (int) Math.ceil(1.0 * results / pageContains));
		return "queryAllOrderBySales";
	}
	/**
	 * 浏览所有图书
	 */
	@RequestMapping("/QueryAll")
	public String queryAll(HttpServletRequest request,
			@RequestParam(required=false) Integer allbookPage,
			@RequestParam(required=false) String productName,
			@RequestParam(required=false) Double highPrice,
			@RequestParam(required=false) Double lowPrice) throws Exception {
		Integer pageContains=4;//每页能显示的商品数
		Integer results=0;
		System.out.println(allbookPage+productName);
		if (allbookPage==null) {
			allbookPage=1;
		}
		if (productName==null) {
			productName="";
		}
		try {
			products = productServiceImpl.queryAll(productName,lowPrice, highPrice, allbookPage,pageContains); 
			results = productServiceImpl.queryAllNumber(productName,lowPrice, highPrice);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("pages", (int) Math.ceil(1.0 * results / pageContains));
		return "forward:/jsp/allbook.jsp";
	}
	/**
	 * 根据种类查询商品信息
	 * @return
	 * @throws Exception
	 */
	public String queryProductsByCategory(HttpServletRequest request) throws Exception {
		Integer results=0;
		try {
			products = productServiceImpl.queryProductsByCategory(categoryId,categoryBookPage); 
			categories = productServiceImpl.queryCategoryById(father_categorieID);
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*request.setAttribute("pages", (int) Math.ceil(1.0 * results / 3));*/
		return "queryPIdCategorySuccess";
	}


	
}
