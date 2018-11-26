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
 *2018��10��13������8:27:44
 * ������Ʒ��Ĳ�����
 */
@Service
@Transactional
public class ProductDaoTest {
	//����id��ѯ��Ʒ 
	@Autowired 
	private ProductDao productDao;
	@Test
	public void queryById() {//2018��10��16�ղ���ͨ��
		try {

			Product product=productDao.queryById("22");
			System.out.println(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	//���ݲ�Ʒid��ѯ��Ʒ����
	@Test
	public void queryCommentByPId() {//2018��10��16�ղ���ͨ��
		DangComments comment=productDao.queryCommentByPId("22");
		System.out.println(comment);
	}
	//��ѯ���۸��� �û�id  UId
	@Test
	public void queryCommentByUId() {//2018��10��16�ղ���ͨ��
		DangComments comment=productDao.queryCommentByUId("100000001");
		System.out.println(comment);
	}
	//��ѯ��Ʒ ���ݼ۸�����
	@Test
	public void queryByPriceRange() {//2018��10��16�ղ���ͨ��
		List<Product> products=productDao.queryByPriceRange("��",null,null,1,4);
		System.out.println(products);
	}
	//��ѯ��Ʒ���� ���ݼ۸�����
	@Test
	public void queryByPriceRangeCount() {//2018��10��16�ղ���ͨ��
		Integer counts=productDao.queryByPriceRangeCount("��ϲ��",null,null);
		System.out.println(counts);
	}
	//��ѯ��Ʒid����ͼƬ
	@Test
	public void queryImgByPId() {//2018��10��16�ղ���ͨ��
		ImgPath imgPaths=productDao.queryImgByPId("61");
		System.out.println(imgPaths);
	}
	//��ѯ�����ѯ ��Ʒid
	@Test
	public void queryPIdCategory() {//2018��10��17�ղ���ͨ��
		List<Product> products=productDao.queryProductsByCategory("��̽/����/����",1,5);
		System.out.println(products);
	}
}
