package dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.DangComments;
import dangdang.beans.ImgPath;
import dangdang.beans.Product;

public interface ProductDao {
	/**
	 * ������Ʒid��ѯ��Ʒ
	 * @param id
	 * @return
	 */
	Product queryById(@Param("id")String id);
	/**
	 * ������Ʒid��ѯ��Ʒ����
	 * @param id
	 * @return
	 */
	DangComments queryCommentByPId(@Param("cid")String cid);
	//�������۷�ҳ
	Integer queryCommentByPIdCounts(@Param("id")String id);
	/**
	 * �����û�id��ѯ��Ʒ����
	 * @param id
	 * @return
	 */
	DangComments queryCommentByUId(@Param("id")String id);
	//�������۷�ҳ
	Integer queryCommentByUIdCounts(@Param("id")String id);
	/**
	 * ��������ģ����ѯ
	 * @param name
	 * @return
	 */
	List<Product> queryByLikeName(@Param("name")String name);
	//�������۷�ҳ
	Integer queryByNameCounts(@Param("name")String name);
	/**
	 * ���ݼ۸������ѯ
	 * @param price
	 * @return
	 */
	public List<Product> queryByPriceRange(
			@Param("productName")String productName,
			@Param("lowPrice")Double lowPrice,
			@Param("highPrice")Double highPrice,
			@Param("begin")Integer begin, 
			@Param("end")Integer end);

	
	public Integer queryByPriceRangeCount(
			@Param("productName")String productName,
			@Param("lowPrice")Double lowPrice,
			@Param("highPrice")Double highPrice);
	//���ݼ۸������ѯ ����������
	public List<Product> queryByPriceRangeOrderBySales(
			@Param("productName")String productName,
			@Param("lowPrice")Double lowPrice,
			@Param("highPrice")Double highPrice,
			@Param("begin")Integer begin, 
			@Param("end")Integer end);
	public ImgPath queryImgByPId(
			@Param("pId")String pId);
	public List<Product> queryProductsByCategory(
			@Param("categoryName")String categoryName,
			@Param("begin")Integer begin, 
			@Param("end")Integer end);

}
