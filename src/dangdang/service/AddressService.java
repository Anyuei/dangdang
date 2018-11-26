package dangdang.service;
import dangdang.beans.AddressList;

public interface AddressService {
	/**
	 * 根据用户id查询地址
	 * @param addressId
	 * @return
	 */
	public AddressList queryAddressById(String uId);
	/**
	 * 修改地址
	 * @param addressId
	 */
	void updateAddressById(String uId,String address);
	/**
	 * 添加地址 
	 * @param addressId
	 */
	void insertAddressById(String uId,String address);
	/**
	 * 删除地址
	 * @param addressId
	 */
	void deleteAddressById(String uId,String address);
}
