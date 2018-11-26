package dangdang.test;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import dangdang.beans.DangComments;
import dangdang.beans.ImgPath;
import dangdang.beans.Product;
import dangdang.dao.ProductDao;


/**
 * ProductDaoTest.java
 * @author anyunpei
 *2018年10月13日上午8:27:44
 * 操作产品表的测试类
 */
@Service
@Transactional
public class ProductDaoTest {
	//根据id查询产品 
	@Autowired 
	private ProductDao productDao;
	@Test
	public void queryById() {//2018年10月16日测试通过
		try {

			Product product=productDao.queryById("22");
			System.out.println(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	//根据产品id查询产品评论
	@Test
	public void queryCommentByPId() {//2018年10月16日测试通过
		DangComments comment=productDao.queryCommentByPId("22");
		System.out.println(comment);
	}
	//查询评论根据 用户id  UId
	@Test
	public void queryCommentByUId() {//2018年10月16日测试通过
		DangComments comment=productDao.queryCommentByUId("100000001");
		System.out.println(comment);
	}
	//查询商品 根据价格区间
	@Test
	public void queryByPriceRange() {//2018年10月16日测试通过
		List<Product> products=productDao.queryByPriceRange("生",null,null,1,4);
		System.out.println(products);
	}
	//查询商品数量 根据价格区间
	@Test
	public void queryByPriceRangeCount() {//2018年10月16日测试通过
		Integer counts=productDao.queryByPriceRangeCount("我喜欢",null,null);
		System.out.println(counts);
	}
	//查询商品id查找图片
	@Test
	public void queryImgByPId() {//2018年10月16日测试通过
		ImgPath imgPaths=productDao.queryImgByPId("61");
		System.out.println(imgPaths);
	}
	//查询种类查询 商品id
	@Test
	public void queryPIdCategory() {//2018年10月17日测试通过
		List<Product> products=productDao.queryProductsByCategory("侦探/悬疑/推理",1,5);
		System.out.println(products);
	}
}
