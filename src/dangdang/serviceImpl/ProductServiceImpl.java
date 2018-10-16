package dangdang.serviceImpl;

import java.util.List;

import dangdang.beans.Product;
import dangdang.dao.ProductDao;
import dangdang.service.ProductService;
import dangdang.utils.MybatisUtil;

public class ProductServiceImpl implements ProductService{

	@Override
	public List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer begin,Integer end) {
		ProductDao dao =MybatisUtil.getMapper(ProductDao.class);
		List<Product> products= dao.queryByPriceRange(productName, lowPrice, highPrice, begin, end);
		System.out.println(products);
		return products;
	}

	@Override
	public Integer queryAllNumber() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
