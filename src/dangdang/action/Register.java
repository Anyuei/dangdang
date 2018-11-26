package dangdang.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionSupport;

import dangdang.beans.User;
import dangdang.service.UserService;
import dangdang.utils.MD5Utils;
/**
 * Register.java
 * @author anyunpei
 *2018��10��22������9:37:14
 * ע��ҳ��Ĳ���
 */
@Controller
@Scope("prototype")
public class Register {
	private String username;
	private String password;
	private String nick;
	private String tel;
	private String email;
	@Autowired
	private UserService userService;
	@RequestMapping("/Register")
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String encryptpassword =MD5Utils.getStringMD5(password);
		
		//����û����Ѿ����ڣ��ض���ȥע��ҳ��
		if (userService.queryUserByName(nick)!= null) {
			request.getSession().setAttribute("registerError", "�û����ѱ�ʹ��");
			response.getWriter().print("�û���������");
			return "forword:/jsp/login.jsp";
		} else {//�����ڵ�ʱ��ע���µ��û�
			User user = new User(null,username,nick,encryptpassword,tel,email,null);
			System.out.println(user);
			userService.regist(user);
			response.getWriter().print("�û�������");
			session.setAttribute("nickname", nick);
			session.setAttribute("username", nick);
			session.setAttribute("uId", user.getId());
			return "forword:/jsp/welcome.jsp";
		}
	}
	@RequestMapping("/checkUsername")
	public void checkUsername() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		//����û����Ѿ����ڣ��ض���ȥע��ҳ��
		if (userService.queryUserByName(nick)!= null) {
			response.getWriter().print("�û���������");
		}else {
			response.getWriter().print("�û�������");
		}
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
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
	
}
