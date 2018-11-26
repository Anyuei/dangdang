package dangdang.beans;

import java.util.List;

/**
 * AddressList.java
 * @author anyunpei
 *2018年10月22日上午9:54:41
 * 用户收货地址 表 addressId 外键于 用户id uId
 */
public class AddressList {
	private String addressId;
	private List<String> address;
	
	public AddressList() {
	}
	public AddressList(String addressId, List<String> address) {
		this.addressId = addressId;
		this.address = address;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public List<String> getAddress() {
		return address;
	}
	public void setAddress(List<String> address) {
		this.address = address;
	}
	public String toString() {
		return "AddressList [addressId=" + addressId + ", address=" + address + "]";
	}
}
