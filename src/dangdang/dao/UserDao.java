package dangdang.dao;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.User;

public interface UserDao {
	/**
	 * 根据用户 uId 查询 用户信息
	 * @param uId
	 * @return
	 */
	User queryUserById(@Param("uId")String uId);
	/**
	 * 根据用户姓名 uName 查询用户信息
	 * @param uName
	 * @return
	 */
	User queryUserByName(@Param("nickname")String nickname);
	/**
	 * 添加用户
	 * @param user
	 * void
	 */
	void insertUser(User user);
	/**
	 * 根据id删除用户
	 * @param uId
	 */
	void deleteUser(@Param("uId")String uId);
	/**
	 * 修改用户
	 * @param user
	 */
	void updateUser(User user);
}
