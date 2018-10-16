package dangdang.dao;
import org.apache.ibatis.annotations.Param;

import dangdang.beans.Manager;

public interface ManagerDao {
	/**
	 * 根据id查询管理员
	 * @param id
	 * @return
	 */
	Manager queryById(@Param("id")String id);
	/**
	 * 根据姓名查询管理员
	 * @param name
	 * @return
	 */
	Manager queryByName(@Param("name")String name);
	/**
	 * 添加管理员
	 * @param manager
	 */
	void addManager(Manager manager);
	/**
	 * 删除管理员
	 * @param manager
	 */
	void deleteManager(Manager manager);
	/**
	 * 修改管理员信息
	 * @param manager
	 */
	void updateManager(Manager manager);
}
