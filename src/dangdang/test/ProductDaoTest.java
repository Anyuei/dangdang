package dangdang.test;

import java.util.List;

import org.junit.jupiter.api.Test;
import dangdang.beans.DangComments;
import dangdang.beans.ImgPath;
import dangdang.beans.Product;
import dangdang.dao.ProductDao;
import dangdang.utils.MybatisUtil;


/**
 * ProductDaoTest.java
 * @author anyunpei
 *2018年10月13日上午8:27:44
 * 操作产品表的测试类
 */
public class ProductDaoTest {
	//根据id查询产品 
	
	@Test
	public void queryById() {//2018年10月16日测试通过
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		Product product=dao.queryById("22");
		System.out.println(product);
	}
	//根据产品id查询产品评论
	@Test
	public void queryCommentByPId() {//2018年10月16日测试通过
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		DangComments comment=dao.queryCommentByPId("22");
		System.out.println(comment);
	}
	//查询评论根据 用户id  UId
	@Test
	public void queryCommentByUId() {//2018年10月16日测试通过
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		DangComments comment=dao.queryCommentByUId("100000001");
		System.out.println(comment);
	}
	//查询商品 根据价格区间
	@Test
	public void queryByPriceRange() {//2018年10月16日测试通过
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		List<Product> products=dao.queryByPriceRange("生",null,null,1,4);
		System.out.println(products);
	}
	//查询商品数量 根据价格区间
	@Test
	public void queryByPriceRangeCount() {//2018年10月16日测试通过
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		Integer counts=dao.queryByPriceRangeCount("我喜欢",null,null);
		System.out.println(counts);
	}
	//查询商品id查找图片
	@Test
	public void queryImgByPId() {//2018年10月16日测试通过
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		ImgPath imgPaths=dao.queryImgByPId("61");
		System.out.println(imgPaths);
	}
}
