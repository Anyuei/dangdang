package dangdang.dao;

import org.apache.ibatis.annotations.Param;

import dangdang.beans.AddressList;

public interface AddressDao {
	/**
	 * 根据id查询地址
	 * @param addressId
	 * @return
	 */
	AddressList queryAddressById(@Param("addressId")String addressId);
	/**
	 * 修改地址
	 * @param addressId
	 */
	void updateAddressById(@Param("addressId")String addressId,@Param("address")String address);
	/**
	 * 添加地址 
	 * @param addressId
	 */
	void insertAddressById(@Param("addressId")String addressId,@Param("address")String address);
	/**
	 * 删除地址
	 * @param addressId
	 */
	void deleteAddressById(@Param("addressId")String addressId,@Param("address")String address);
}
