package dangdang.service;

import java.util.List;

import dangdang.beans.Product;

public interface ProductService {
	/**
	 * 查询所有
	 * @return
	 */
	List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer begin,Integer end);
	/**
	 * 查询所有产品的数量
	 * @return
	 */
	Integer queryAllNumber();
	
}
