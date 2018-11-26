package dangdang.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dangdang.beans.AddressList;
import dangdang.dao.AddressDao;
import dangdang.service.AddressService;
@Service
public class AddressServiceImpl implements AddressService{
	@Autowired
	private AddressDao addressDao;
	/**
	 * �����û�id��ѯ��ַ
	 */
	public AddressList queryAddressById(String uId) {
		return addressDao.queryAddressById(uId);
	}
	public void updateAddressById(String uId,String address) {	
	}
	public void insertAddressById(String uId,String address) {	
		try {
			addressDao.insertAddressById(uId, address);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("��ӵ�ַʧ��");
		}
	}
	public void deleteAddressById(String uId,String address) {	
	}
}
