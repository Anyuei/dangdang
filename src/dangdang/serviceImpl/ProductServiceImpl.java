package dangdang.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dangdang.beans.Category;
import dangdang.beans.Product;
import dangdang.dao.CategoryDao;
import dangdang.dao.ProductDao;
import dangdang.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	/**
	 * ��ѯ������Ʒ
	 */
	public List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains) {
		try{
			/**
			 * �����ҳ
			 */
			Integer begin = (currentPage-1)*pageContains+1; 
			Integer end = currentPage*pageContains;
			List<Product> products = productDao.queryByPriceRange(productName, lowPrice, highPrice, begin, end);
			for (Product product : products) {
				product.setIpath(productDao.queryImgByPId(product.getPId()));
			}
			System.out.println(products);
			return products;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("����ʧ��");
		}
	}
	/**
	 * ������������
	 * @param productName
	 * @param lowPrice
	 * @param highPrice
	 * @param currentPage
	 * @param pageContains
	 * @return
	 */
	public List<Product> queryAllOrderBySales(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains) {
		try{
			/**
			 * �����ҳ
			 */
			Integer begin = (currentPage-1)*pageContains+1; 
			Integer end = currentPage*pageContains;
			List<Product> products = productDao.queryByPriceRangeOrderBySales(productName, lowPrice, highPrice, begin, end);
			for (Product product : products) {
				product.setIpath(productDao.queryImgByPId(product.getPId()));
			}
			System.out.println(products);
			return products;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("����ʧ��");
		}
	}
	/**
	 * ��ѯ������Ʒ������ �����ڿ��Ʒ�ҳ����ҳ����С��
	 */
	public Integer queryAllNumber(String productName,Double lowPrice, Double highPrice) {
		Integer counts=0;
		try{
			counts = productDao.queryByPriceRangeCount(productName,lowPrice, highPrice);
			return counts;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("����ʧ��");
		}
	}
	/**
	 * ������Ʒ����id ��ѯ��Ʒ����
	 * @param category_id
	 * @return
	 */
	public List<Category> queryCategoryById(String category_id) {
		try{
			return categoryDao.queryCategoryById(category_id);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("����ʧ��");
		}
	}
	/**
	 * ��ѯ��������
	 * @return
	 */
	public List<Category> queryAllCategory() {
		try{
			return categoryDao.queryAllCategory();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("��ѯ�����������ʧ��");
		}
	}
	/**
	 * ����������  ��ѯ ��Ʒ��Ϣ
	 */
	public List<Product> queryProductsByCategory(String categoryName,Integer currentPage) {
		try{
			Integer begin = (currentPage-1)*8+1; 
			Integer end = currentPage*8;
			List<Product> products =  productDao.queryProductsByCategory(categoryName, begin, end);
			for (Product product : products) {
				product.setIpath(productDao.queryImgByPId(product.getPId()));
			}
			return products;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("���������ѯ ��Ʒ��Ϣ����ʧ��");
		}
	}
	/**
	 * ������Ʒid��ѯ��Ʒ
	 */
	public Product queryById(String productId) {
		try{
			Product product =  productDao.queryById(productId);
			product.setIpath(productDao.queryImgByPId(product.getPId()));
			return product;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("������Ʒid��ѯ��Ʒ����ʧ��");
		}
	}
	
}
