package dangdang.service;

import java.util.List;

import dangdang.beans.Product;

public interface ProductService {
	/**
	 * ��ѯ����
	 * @return
	 */
	List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer begin,Integer end);
	/**
	 * ��ѯ���в�Ʒ������
	 * @return
	 */
	Integer queryAllNumber();
	
}
