package dangdang.dao;
import org.apache.ibatis.annotations.Param;

import dangdang.beans.Manager;

public interface ManagerDao {
	/**
	 * ����id��ѯ����Ա
	 * @param id
	 * @return
	 */
	Manager queryById(@Param("id")String id);
	/**
	 * ����������ѯ����Ա
	 * @param name
	 * @return
	 */
	Manager queryByName(@Param("name")String name);
	/**
	 * ��ӹ���Ա
	 * @param manager
	 */
	void addManager(Manager manager);
	/**
	 * ɾ������Ա
	 * @param manager
	 */
	void deleteManager(Manager manager);
	/**
	 * �޸Ĺ���Ա��Ϣ
	 * @param manager
	 */
	void updateManager(Manager manager);
}
