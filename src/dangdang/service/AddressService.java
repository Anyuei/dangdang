package dangdang.service;
import dangdang.beans.AddressList;

public interface AddressService {
	/**
	 * �����û�id��ѯ��ַ
	 * @param addressId
	 * @return
	 */
	public AddressList queryAddressById(String uId);
	/**
	 * �޸ĵ�ַ
	 * @param addressId
	 */
	void updateAddressById(String uId,String address);
	/**
	 * ��ӵ�ַ 
	 * @param addressId
	 */
	void insertAddressById(String uId,String address);
	/**
	 * ɾ����ַ
	 * @param addressId
	 */
	void deleteAddressById(String uId,String address);
}
