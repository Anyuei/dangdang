package dangdang.beans;

import java.io.Serializable;

public class Manager implements Serializable{
	private String managerId;
	private String managerName;
	private String tel;
	private String password;
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Manager(String managerId, String managerName, String tel, String password) {
		super();
		this.managerId = managerId;
		this.managerName = managerName;
		this.tel = tel;
		this.password = password;
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", managerName=" + managerName + ", tel=" + tel + ", password="
				+ password + "]";
	}
	
}
