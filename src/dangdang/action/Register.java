package dangdang.action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.Action;
import dangdang.utils.MD5Utils;
public class Register implements Action{

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
/*	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String encryptpassword = new MD5Utils().getStringMD5(password);
		String realname = request.getParameter("realname");
		String zip = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String avatarPath = request.getParameter("avatarPath");
		String tel = request.getParameter("tel");
		//����û����Ѿ����ڣ��ض���ȥע��ҳ��
		if (new UserServiceImpl().findByName(username)!= null) {
			request.getSession().setAttribute("registerError", "�û����ѱ�ʹ��");
			return "RegisterFail";
		} else {//�����ڵ�ʱ��ע���µ��û�
			new UserServiceImpl().regist(new YGUser(username, encryptpassword, realname, Integer.parseInt(zip), address,avatarPath,tel));
			session.setAttribute("username", username);
			return "RegisterSuccess";
		}
	}*/
}
