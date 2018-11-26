package dangdang.dao;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.AddressList;

public interface AddressDao {
	/**
	 * ����id��ѯ��ַ
	 * @param addressId
	 * @return
	 */
	AddressList queryAddressById(@Param("addressId")String addressId);
	/**
	 * �޸ĵ�ַ
	 * @param addressId
	 */
	void updateAddressById(@Param("addressId")String addressId,@Param("address")String address);
	/**
	 * ��ӵ�ַ 
	 * @param addressId
	 */
	void insertAddressById(@Param("addressId")String addressId,@Param("address")String address);
	/**
	 * ɾ����ַ
	 * @param addressId
	 */
	void deleteAddressById(@Param("addressId")String addressId,@Param("address")String address);
}
