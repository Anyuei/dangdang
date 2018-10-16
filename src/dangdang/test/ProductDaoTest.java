package dangdang.test;

import org.junit.jupiter.api.Test;
import dangdang.beans.DangComments;
import dangdang.beans.Product;
import dangdang.dao.ProductDao;
import dangdang.utils.MybatisUtil;


/**
 * ProductDaoTest.java
 * @author anyunpei
 *2018��10��13������8:27:44
 * ������Ʒ��Ĳ�����
 */
public class ProductDaoTest {
	//����id��ѯ��Ʒ 
	
	@Test
	public void queryById() {
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		Product product=dao.queryById("22");
		System.out.println(product);
	}
	//���ݲ�Ʒid��ѯ��Ʒ����
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
