package dangdang.service;

import java.util.List;

import dangdang.beans.Category;
import dangdang.beans.Product;

public interface ProductService {
	/**
	 * 查询所有
	 * @return
	 */
	List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains);
	Product queryById(String productId);
	/**
	 * 根据价格排序
	 * @param productName
	 * @param lowPrice
	 * @param highPrice
	 * @param currentPage
	 * @param pageContains
	 * @return
	 */
	public List<Product> queryAllOrderBySales(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains);
	/**
	 * 查询所有产品的数量
	 * @return
	 */
	Integer queryAllNumber(String productName,Double lowPrice, Double highPrice);
	/**
	 * 查询所有种类
	 * @return
	 */
	List<Category> queryAllCategory();
	/**
	 * 根据种类 查询 商品信息
	 * @return
	 */
	List<Product> queryProductsByCategory(String categoryName,Integer currentPage);
	List<Category> queryCategoryById(String category_id);
}
