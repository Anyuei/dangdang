package dangdang.test;
import org.junit.jupiter.api.Test;
import dangdang.beans.User;
import dangdang.dao.UserDao;
import dangdang.utils.MD5Utils;
import dangdang.utils.MybatisUtil;
/**
 * UserDaoTest.java
 * @author anyunpei
 *2018��10��23������6:54:40
 * �û���Ϊ����
 */
public class UserDaoTest {
	@Test
	public void MD5Test() {
		System.out.println(new MD5Utils().getStringMD5("000000"));
	}
	@Test
	public void login() {
			UserDao dao =MybatisUtil.getMapper(UserDao.class);
			User user =dao.queryUserByName("gakki");
			System.out.println(user);
	}
	@Test
	public void update() {
		MybatisUtil.getMapper(UserDao.class).updateUser(new User("100000027", "pp", null, null, "110", null,null));
		MybatisUtil.commit();
	}
	@Test
	public void insert() {
		User user= new User(null, "p", "iaoxxx", "111111", "110", "ayw@daw.com",null);
		MybatisUtil.getMapper(UserDao.class).insertUser(user);
		MybatisUtil.commit();
		System.out.println(user);
	}
}
