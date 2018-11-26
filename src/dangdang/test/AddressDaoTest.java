package dangdang.test;

import org.junit.jupiter.api.Test;

import dangdang.dao.AddressDao;
import dangdang.utils.MybatisUtil;

public class AddressDaoTest {
	@Test
	public void queryAddressById() {
		System.out.println(MybatisUtil.getMapper(AddressDao.class).queryAddressById("100000069"));
	}
	@Test
	public void updateAddressById() {
		
	}
	@Test
	public void insertAddressById() {
		
	}
	@Test
	public void deleteAddressById() {
		
	}
}
