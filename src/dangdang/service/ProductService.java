package dangdang.service;

import java.util.List;

import dangdang.beans.Category;
import dangdang.beans.Product;

public interface ProductService {
	/**
	 * ��ѯ����
	 * @return
	 */
	List<Product> queryAll(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains);
	Product queryById(String productId);
	/**
	 * ���ݼ۸�����
	 * @param productName
	 * @param lowPrice
	 * @param highPrice
	 * @param currentPage
	 * @param pageContains
	 * @return
	 */
	public List<Product> queryAllOrderBySales(String productName,Double lowPrice,Double highPrice,Integer currentPage,Integer pageContains);
	/**
	 * ��ѯ���в�Ʒ������
	 * @return
	 */
	Integer queryAllNumber(String productName,Double lowPrice, Double highPrice);
	/**
	 * ��ѯ��������
	 * @return
	 */
	List<Category> queryAllCategory();
	/**
	 * �������� ��ѯ ��Ʒ��Ϣ
	 * @return
	 */
	List<Product> queryProductsByCategory(String categoryName,Integer currentPage);
	List<Category> queryCategoryById(String category_id);
}
