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
	 * �û�ע�����
	 */
	public void regist(User user) {
		try {
			userDao.insertUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("ע���û�ʧ��");
		}
	}
	/**
	 * �û��޸ķ���
	 */
	public void modify(User user) {
		
	}
	/**
	 * �û���¼����
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
			throw new RuntimeException("��¼ʧ��");
		}
	}
	/**
	 * �����û�id��ѯ����
	 */
	public User queryUserById(String id) {
		try {
			return userDao.queryUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("��ѯ�û�ʧ��");
		}
	}
	/**
	 * �����û��ǳƲ�ѯ����
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
