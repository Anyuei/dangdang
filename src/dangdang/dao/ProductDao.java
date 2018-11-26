package dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.DangComments;
import dangdang.beans.ImgPath;
import dangdang.beans.Product;

public interface ProductDao {
	/**
	 * 根据商品id查询商品
	 * @param id
	 * @return
	 */
	Product queryById(@Param("id")String id);
	/**
	 * 根据商品id查询商品评论
	 * @param id
	 * @return
	 */
	DangComments queryCommentByPId(@Param("cid")String cid);
	//用于评论分页
	Integer queryCommentByPIdCounts(@Param("id")String id);
	/**
	 * 根据用户id查询商品评论
	 * @param id
	 * @return
	 */
	DangComments queryCommentByUId(@Param("id")String id);
	//用于评论分页
	Integer queryCommentByUIdCounts(@Param("id")String id);
	/**
	 * 根据名字模糊查询
	 * @param name
	 * @return
	 */
	List<Product> queryByLikeName(@Param("name")String name);
	//用于评论分页
	Integer queryByNameCounts(@Param("name")String name);
	/**
	 * 根据价格区间查询
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
	//根据价格区间查询 以销量排序
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
