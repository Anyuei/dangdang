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
	 * 查询所有商品
	 */
	public List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains) {
		try{
			/**
			 * 计算分页
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
			throw new RuntimeException("操作失败");
		}
	}
	/**
	 * 根据销量排序
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
			 * 计算分页
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
			throw new RuntimeException("操作失败");
		}
	}
	/**
	 * 查询所有商品的数量 （用于控制分页的总页数大小）
	 */
	public Integer queryAllNumber(String productName,Double lowPrice, Double highPrice) {
		Integer counts=0;
		try{
			counts = productDao.queryByPriceRangeCount(productName,lowPrice, highPrice);
			return counts;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("操作失败");
		}
	}
	/**
	 * 根据商品种类id 查询商品种类
	 * @param category_id
	 * @return
	 */
	public List<Category> queryCategoryById(String category_id) {
		try{
			return categoryDao.queryCategoryById(category_id);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("操作失败");
		}
	}
	/**
	 * 查询所有种类
	 * @return
	 */
	public List<Category> queryAllCategory() {
		try{
			return categoryDao.queryAllCategory();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("查询所有种类操作失败");
		}
	}
	/**
	 * 根据种类名  查询 商品信息
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
			throw new RuntimeException("根据种类查询 商品信息操作失败");
		}
	}
	/**
	 * 根据商品id查询商品
	 */
	public Product queryById(String productId) {
		try{
			Product product =  productDao.queryById(productId);
			product.setIpath(productDao.queryImgByPId(product.getPId()));
			return product;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("根据商品id查询商品操作失败");
		}
	}
	
}
