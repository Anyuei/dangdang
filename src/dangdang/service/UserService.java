package dangdang.service;

import dangdang.beans.User;

public interface UserService {
		/**
		 * 用户注册
		 * @param user
		 */
		void regist(User user);
		/**
		 * 修改用户信息
		 * @param user
		 */
		void modify(User user);
		/**
		 * 用户登录验证
		 * @param username
		 * @param password
		 * @return
		 */
		User login(String username,String password);
		/**
		 * 根据id查询用户信息
		 * @param id
		 * @return
		 */
		User queryUserById(String id);
		/**
		 * 根据昵称查询用户信息
		 * @param name
		 * @return
		 */
		User queryUserByName(String name);
}
