package dangdang.test;

import org.junit.jupiter.api.Test;
import dangdang.beans.DangComments;
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
	public void queryById() {
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		Product product=dao.queryById("22");
		System.out.println(product);
	}
	//根据产品id查询产品评论
	@Test
	public void queryCommentByPId() {
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		DangComments comment=dao.queryCommentByPId("22");
		System.out.println(comment);
	}
	@Test
	public void queryCommentByUId() {
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		DangComments comment=dao.queryCommentByUId("100000001");
		System.out.println(comment);
	}
}
