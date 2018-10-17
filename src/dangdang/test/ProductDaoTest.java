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
 *2018��10��13������8:27:44
 * ������Ʒ��Ĳ�����
 */
public class ProductDaoTest {
	//����id��ѯ��Ʒ 
	
	@Test
	public void queryById() {//2018��10��16�ղ���ͨ��
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		Product product=dao.queryById("22");
		System.out.println(product);
	}
	//���ݲ�Ʒid��ѯ��Ʒ����
	@Test
	public void queryCommentByPId() {//2018��10��16�ղ���ͨ��
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		DangComments comment=dao.queryCommentByPId("22");
		System.out.println(comment);
	}
	//��ѯ���۸��� �û�id  UId
	@Test
	public void queryCommentByUId() {//2018��10��16�ղ���ͨ��
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		DangComments comment=dao.queryCommentByUId("100000001");
		System.out.println(comment);
	}
	//��ѯ��Ʒ ���ݼ۸�����
	@Test
	public void queryByPriceRange() {//2018��10��16�ղ���ͨ��
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		List<Product> products=dao.queryByPriceRange("��",null,null,1,4);
		System.out.println(products);
	}
	//��ѯ��Ʒ���� ���ݼ۸�����
	@Test
	public void queryByPriceRangeCount() {//2018��10��16�ղ���ͨ��
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		Integer counts=dao.queryByPriceRangeCount("��ϲ��",null,null);
		System.out.println(counts);
	}
	//��ѯ��Ʒid����ͼƬ
	@Test
	public void queryImgByPId() {//2018��10��16�ղ���ͨ��
		ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
		ImgPath imgPaths=dao.queryImgByPId("61");
		System.out.println(imgPaths);
	}
}
