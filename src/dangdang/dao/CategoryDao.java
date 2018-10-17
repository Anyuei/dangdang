package dangdang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.Category;

public interface CategoryDao {
	/**
	 * 根据种类id查询种类信息
	 * @param category_id
	 * @return
	 */
	List<Category> queryCategoryById(@Param("category_id")String category_id);
	List<Category> queryAllCategory();
	
}
