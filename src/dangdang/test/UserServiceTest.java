package dangdang.test;

import org.junit.jupiter.api.Test;

import dangdang.serviceImpl.UserServiceImpl;

public class UserServiceTest {
	@Test
	public void queryUserByName() {
		System.out.println(new UserServiceImpl().queryUserByName("ki"));
	}
}
