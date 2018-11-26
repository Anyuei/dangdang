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
 *2018��10��19������3:50:01
 * �Թ��ﳵ�� һϵ�в���
 */
@Controller
@Scope("prototype")
public class CartAction{
	private String pId;
	private String[] pIds;//ѡ���ѡ�еĲ�Ʒid
	private List<Product> products;
	private CartItem cartItem;
	private String minusOrAdd;
	private Integer counts;
	@Resource
	private ProductService productService;
	/**
	 * ���ﳵ��Ʒ���
	 * @return
	 */
	@RequestMapping("/CartAdd")
	public String cartAdd() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();

		Product product = productService.queryById(pId);
		// ��ȡ���ﳵ
		Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		if (cart == null) {// ���ӻỰ�л�ȡ�������ﳵʱ
			//-���������ﳵ
			cart = new HashMap<String, CartItem>();
			//�½�һ�����ﳵ ��Ʒʵ��cartItem����Ʒʵ�壬��������Ʒ�۸�
			cartItem = new CartItem(product, 1, product.getPrice() * 1);
			//��  ��Ʒid��  ���ﳵ��Ʒʵ�� ����map��
			cart.put(pId, cartItem);
			session.setAttribute("cart", cart);
		} else {
			// �ж��Ƿ�����ӹ�����Ʒ
			if (cart.containsKey(pId)) {
				//���ݲ�Ʒid��ȡ ���ﳵ��Ʒʵ��
				cartItem = cart.get(pId);
				//��Ʒʵ������-������ ��һ
				cartItem.setAmount(cartItem.getAmount()+1);
				//���¼����ܼ۲�����
				cartItem.setTotalPrice(product.getPrice() * cartItem.getAmount());
			} else {
				System.out.println("��Ʒ��Ϣ"+product);
				cartItem = new CartItem(product, 1, product.getPrice() * 1);
				cart.put(pId, cartItem);
			}
			session.setAttribute("cart", cart);
		}
		session.setAttribute("pIds", pIds);
		return "redirect:/jsp/myCart.jsp";
	}
	/**
	 * ���ﳵ��Ʒɾ��
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
	 * �޸���Ŀ
	 * @return
	 */
	@RequestMapping("/changeNumber")
	public String addProduct() {
		System.out.println("���뷽��1111111111111"+pId);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();
		Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		cartItem = cart.get(pId);
		if (counts!=null) {
			System.out.println("�����޸�����"+counts);
			cartItem.setAmount(counts);
		}
		if(pId!=null){
			System.out.println("�����޸�"+"minusOrAdd:"+minusOrAdd);
			//���ݲ�Ʒid��ȡ ���ﳵ��Ʒʵ��
			Product product =productService.queryById(pId);
			if (minusOrAdd!=null) {
				if (minusOrAdd.equals("add")) {
					//��Ʒʵ������-������ ��һ
					cartItem.setAmount(cartItem.getAmount()+1);
					System.out.println("���뷽��"+pId+"����+1");
				}else if (minusOrAdd.equals("minus")){
					//��Ʒʵ������-������ ��һ
					cartItem.setAmount(cartItem.getAmount()-1);
					System.out.println("���뷽��"+pId+"����-1");
				}
			}
			//���¼����ܼ۲�����
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
