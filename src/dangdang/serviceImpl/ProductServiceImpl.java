package dangdang.serviceImpl;

import java.util.List;


import dangdang.beans.Product;
import dangdang.dao.ProductDao;
import dangdang.service.ProductService;
import dangdang.utils.MybatisUtil;

public class ProductServiceImpl implements ProductService{

	public List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer currentPage) {
		try{
			ProductDao dao=MybatisUtil.getMapper(ProductDao.class);
			/**
			 * ¼ÆËã·ÖÒ³
			 */
			Integer begin = (currentPage-1)*8+1; 
			Integer end = currentPage*8;
			List<Product> products = dao.queryByPriceRange(productName, lowPrice, highPrice, begin, end);
			for (Product product : products) {
				product.setIpath(dao.queryImgByPId(product.getPId()));
			}
			System.out.println(products);
			return products;
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException("²Ù×÷Ê§°Ü");
		}finally{
			MybatisUtil.close();
		}
	}

	public Integer queryAllNumber(String productName,Double lowPrice, Double highPrice) {
		Integer counts=0;
		try{
			ProductDao dao = MybatisUtil.getMapper(ProductDao.class);
			counts = dao.queryByPriceRangeCount(productName,lowPrice, highPrice);
			return counts;
		}catch(Exception e){

			e.printStackTrace();
			throw new RuntimeException("²Ù×÷Ê§°Ü");
		}finally{
			MybatisUtil.close();
		}
	}
	
}
