package dangdang.test;

import java.util.List;
import org.junit.jupiter.api.Test;
import dangdang.beans.Product;
import dangdang.serviceImpl.ProductServiceImpl;

public class ProductServiceTest {
	@Test
	public void queryByPriceRange() {//2018��10��16�ղ���ͨ��
		List<Product> products=new ProductServiceImpl().queryAll("��ϲ����������������",null,null,1,2);
		System.out.println(products);
	}
	 
}
