package dangdang.service;

import dangdang.beans.User;

public interface UserService {
		/**
		 * �û�ע��
		 * @param user
		 */
		void regist(User user);
		/**
		 * �޸��û���Ϣ
		 * @param user
		 */
		void modify(User user);
		/**
		 * �û���¼��֤
		 * @param username
		 * @param password
		 * @return
		 */
		User login(String username,String password);
}
