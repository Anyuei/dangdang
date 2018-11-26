package dangdang.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dangdang.beans.User;
import dangdang.dao.UserDao;
import dangdang.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	/**
	 * 用户注册服务
	 */
	public void regist(User user) {
		try {
			userDao.insertUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("注册用户失败");
		}
	}
	/**
	 * 用户修改服务
	 */
	public void modify(User user) {
		
	}
	/**
	 * 用户登录服务
	 */
	public User login(String username, String password) {
		try {
			User user =userDao.queryUserByName(username);
			if (user==null||!user.getPassword().equals(password)) {
				return null;
			}else{
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("登录失败");
		}
	}
	/**
	 * 根据用户id查询服务
	 */
	public User queryUserById(String id) {
		try {
			return userDao.queryUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询用户失败");
		}
	}
	/**
	 * 根据用户昵称查询服务
	 */
	public User queryUserByName(String name) {
		try {
			if (name!=null) {
				return userDao.queryUserByName(name);
			}
			return null;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
