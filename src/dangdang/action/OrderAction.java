package dangdang.action;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionSupport;

import dangdang.beans.AddressList;
import dangdang.beans.CartItem;
import dangdang.beans.OrderItem;
import dangdang.beans.Product;
import dangdang.serviceImpl.AddressServiceImpl;

/**
 * OrderAction.java
 * @author anyunpei
 *2018年10月24日上午11:08:14
 *订单相关操作
 */
@Controller
@Scope("prototype")
public class OrderAction {
	private static final long serialVersionUID = 1L;
	private List<Product> products;//用户确认要填入订单的商品
	private List<OrderItem> orderItems;//订单项
	private String receiptname;
	private String receiptTel;
	private String receiptAddress;
	private AddressList addressList;
	private Double orderPrice;
	public String formatDouble(double s){
	      DecimalFormat fmt = new DecimalFormat("\u00A4##0.00");
	      return fmt.format(s);
	 }
	@RequestMapping("/FillOrder")
	public String fillOrder() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		orderItems = new ArrayList<OrderItem>();
		products = new ArrayList<Product>();
		Product product=new Product();
		try {
			String uuid = UUID.randomUUID().toString();
			String[] pIds = request.getParameterValues("pIds");
			if (pIds==null) {
				return "myCart";
			}
			Map<String,CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
			CartItem cartItem=null;
			for (String pId : pIds) {
				System.out.println("订单中的产品id:   "+pId);
				//从购物车中拿出 需要写入订单的 购物项
				cartItem= cart.get(pId);
				product = cartItem.getProduct();//从购物项中拿出商品
				
				//生成订单项 填入相应信息
				OrderItem orderItem =new OrderItem(
						uuid, 
						product, 
						cartItem.getAmount(), 
						product.getPrice());
				
				orderItems.add(orderItem);//订单中加入订单项
				products.add(product);//将要放进订单的 产品放入list集合
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("填写订单失败");
		}
		
		session.setAttribute("orderItems", orderItems);
		return "forward：/jsp/fillOrder.jsp";
	}
	/**
	 * 提交订单
	 * @return
	 */
	@RequestMapping("/SendOrder")
	public String sendOrder() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		String uId=(String)session.getAttribute("uId");
		System.out.println(uId);
		List<String> addresses =new ArrayList<String>();
		String address =receiptname+":"+receiptTel+":"+receiptAddress;
		addresses.add(address);
		addressList = new AddressList(uId,addresses);
		new AddressServiceImpl().insertAddressById(uId, address);
		return "forward:/jsp/pay.jsp";
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	public String getReceiptname() {
		return receiptname;
	}
	public void setReceiptname(String receiptname) {
		this.receiptname = receiptname;
	}
	public String getReceiptTel() {
		return receiptTel;
	}
	public void setReceiptTel(String receiptTel) {
		this.receiptTel = receiptTel;
	}
	public String getReceiptAddress() {
		return receiptAddress;
	}
	public void setReceiptAddress(String receiptAddress) {
		this.receiptAddress = receiptAddress;
	}
	public AddressList getAddressList() {
		return addressList;
	}
	public void setAddressList(AddressList addressList) {
		this.addressList = addressList;
	}
	public Double getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(Double orderPrice) {
		this.orderPrice = orderPrice;
	}
	
}
