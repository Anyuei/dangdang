package dangdang.test;

import java.util.List;
import org.junit.jupiter.api.Test;
import dangdang.beans.Product;
import dangdang.serviceImpl.ProductServiceImpl;

public class ProductServiceTest {
	@Test
	public void queryByPriceRange() {//2018年10月16日测试通过
		List<Product> products=new ProductServiceImpl().queryAll("我喜欢生命本来的样子",null,null,1,2);
		System.out.println(products);
	}
	 
}
