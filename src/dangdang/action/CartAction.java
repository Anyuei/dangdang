package dangdang.action;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionSupport;
import dangdang.beans.CartItem;
import dangdang.beans.Product;
import dangdang.service.ProductService;

/**
 * CartAction.java
 * @author anyunpei
 *2018年10月19日下午3:50:01
 * 对购物车的 一系列操作
 */
@Controller
@Scope("prototype")
public class CartAction{
	private String pId;
	private String[] pIds;//选择框被选中的产品id
	private List<Product> products;
	private CartItem cartItem;
	private String minusOrAdd;
	private Integer counts;
	@Resource
	private ProductService productService;
	/**
	 * 购物车商品添加
	 * @return
	 */
	@RequestMapping("/CartAdd")
	public String cartAdd() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();

		Product product = productService.queryById(pId);
		// 获取购物车
		Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		if (cart == null) {// 当从会话中获取不到购物车时
			//-》创建购物车
			cart = new HashMap<String, CartItem>();
			//新建一个购物车 商品实体cartItem（商品实体，数量，商品价格）
			cartItem = new CartItem(product, 1, product.getPrice() * 1);
			//把  商品id与  购物车商品实体 放入map中
			cart.put(pId, cartItem);
			session.setAttribute("cart", cart);
		} else {
			// 判断是否已添加过此商品
			if (cart.containsKey(pId)) {
				//根据产品id获取 购物车商品实体
				cartItem = cart.get(pId);
				//商品实体属性-》数量 加一
				cartItem.setAmount(cartItem.getAmount()+1);
				//重新计算总价并更新
				cartItem.setTotalPrice(product.getPrice() * cartItem.getAmount());
			} else {
				System.out.println("产品信息"+product);
				cartItem = new CartItem(product, 1, product.getPrice() * 1);
				cart.put(pId, cartItem);
			}
			session.setAttribute("cart", cart);
		}
		session.setAttribute("pIds", pIds);
		return "redirect:/jsp/myCart.jsp";
	}
	/**
	 * 购物车商品删除
	 * @return
	 */
	@RequestMapping("/CartDelete")
	public String cartDelete() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		if(pIds!=null){
			for(int i=0;i<pIds.length;i++){
				cart.remove(pIds[i]);
			}
		}
		return "redirect:/jsp/myCart.jsp";
	}
	/**
	 * 修改数目
	 * @return
	 */
	@RequestMapping("/changeNumber")
	public String addProduct() {
		System.out.println("进入方法1111111111111"+pId);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		cartItem = cart.get(pId);
		if (counts!=null) {
			System.out.println("进入修改数量"+counts);
			cartItem.setAmount(counts);
		}
		if(pId!=null){
			System.out.println("进入修改"+"minusOrAdd:"+minusOrAdd);
			//根据产品id获取 购物车商品实体
			Product product =productService.queryById(pId);
			if (minusOrAdd!=null) {
				if (minusOrAdd.equals("add")) {
					//商品实体属性-》数量 减一
					cartItem.setAmount(cartItem.getAmount()+1);
					System.out.println("进入方法"+pId+"数量+1");
				}else if (minusOrAdd.equals("minus")){
					//商品实体属性-》数量 减一
					cartItem.setAmount(cartItem.getAmount()-1);
					System.out.println("进入方法"+pId+"数量-1");
				}
			}
			//重新计算总价并更新
			cartItem.setTotalPrice(Double.parseDouble(new DecimalFormat("######0.00").format(product.getPrice() * cartItem.getAmount())));
		}
		return "redirect:/jsp/myCart.jsp";
	}
	public String getPId() {
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public String[] getPIds() {
		return pIds;
	}
	public void setPIds(String[] pIds) {
		this.pIds = pIds;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public CartItem getCartItem() {
		return cartItem;
	}
	public void setCartItem(CartItem cartItem) {
		this.cartItem = cartItem;
	}
	public String getMinusOrAdd() {
		return minusOrAdd;
	}
	public void setMinusOrAdd(String minusOrAdd) {
		this.minusOrAdd = minusOrAdd;
	}
	public Integer getCounts() {
		return counts;
	}
	public void setCounts(Integer counts) {
		this.counts = counts;
	}
}
