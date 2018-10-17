package dangdang.beans;

import java.io.Serializable;

public class Seller implements Serializable{
	private String id;
	private String name;
	private String nickname;
	private String password;
	private String tel;
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
	public Seller(String id, String name, String nickname, String password, String tel) {
		super();
		this.id = id;
		this.name = name;
		this.nickname = nickname;
		this.password = password;
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "Seller [id=" + id + ", name=" + name + ", nickname=" + nickname + ", password=" + password + ", tel="
				+ tel + "]";
	}
}
