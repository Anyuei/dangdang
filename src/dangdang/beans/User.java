package dangdang.beans;

import java.io.Serializable;
/**
 * User.java
 * @author anyunpei
 *2018年10月22日上午9:34:28
 *用户信息bean
 */
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String nickname;
	private String password;
	private String tel;
	private String email;
	private AddressList addressList; 
	public User() {
	}
	public User(String id, String name, String nickname, String password, String tel, String email,
			AddressList addressList) {

		this.id = id;
		this.name = name;
		this.nickname = nickname;
		this.password = password;
		this.tel = tel;
		this.email = email;
		this.addressList = addressList;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public AddressList getAddressList() {
		return addressList;
	}
	public void setAddressList(AddressList addressList) {
		this.addressList = addressList;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", nickname=" + nickname + ", password=" + password + ", tel="
				+ tel + ", email=" + email + ", addressList=" + addressList + "]";
	}

}
