package dangdang.dao;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.User;

public interface UserDao {
	/**
	 * �����û� uId ��ѯ �û���Ϣ
	 * @param uId
	 * @return
	 */
	User queryUserById(@Param("uId")String uId);
	/**
	 * �����û����� uName ��ѯ�û���Ϣ
	 * @param uName
	 * @return
	 */
	User queryUserByName(@Param("nickname")String nickname);
	/**
	 * ����û�
	 * @param user
	 * void
	 */
	void insertUser(User user);
	/**
	 * ����idɾ���û�
	 * @param uId
	 */
	void deleteUser(@Param("uId")String uId);
	/**
	 * �޸��û�
	 * @param user
	 */
	void updateUser(User user);
}
