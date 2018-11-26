package dangdang.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.servlet.KaptchaExtend;

import dangdang.beans.User;
import dangdang.service.UserService;
import dangdang.utils.MD5Utils;
/**
 * Login.java
 * @author anyunpei
 * 2018年10月19日下午8:41:34
 * 登录操作 核心代码
 */
@Controller
@Scope("prototype")
@RequestMapping("/a")
public class Login {
	@Autowired
	private KaptchaExtend kaptcha; //注入验证码组件
	@Autowired
	private UserService userService;
	@RequestMapping("/Login")
	public String login(
			@RequestParam String rememberMe,
			@RequestParam String password,
			@RequestParam String username,
			HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		kaptcha.captcha(request, response);
		String encryptpassword=null;
		System.out.println(rememberMe);
		if (session == null) {
			return "redirect:/jsp/index.jsp";
		} else {
			//加密密码
			System.out.println("验证码为："+kaptcha);
			encryptpassword = MD5Utils.getStringMD5(password);
			System.out.println("加密密码为"+encryptpassword);
			// 调用service层login方法
			User user = userService.login(username, encryptpassword);
			System.out.println("用户为："+user);
			// 判断用户名密码是否正确，或验证码是否正确
			if (user == null) {
				request.getSession().setAttribute("LoginError", "用户名或者密码错误");
				return "redirect:/jsp/index.jsp";
			}else if (!session.getAttribute("code").equals(kaptcha)) {
				request.getSession().setAttribute("KaptchaError", "验证码错误");
				return "redirect:/jsp/index.jsp";
			} else {
				// 登录成功且“记住我”被选中时，记住用户名和密码
				Cookie usernameCookie = null;
				try {
					usernameCookie = new Cookie("username", URLEncoder.encode(username, "UTF-8"));
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Cookie passwordCookie = new Cookie("password", password);
				if (rememberMe != null) {
					System.out.println("用户名和密码的cookie已生成");
					usernameCookie.setMaxAge(60 * 60 * 24);
					passwordCookie.setMaxAge(60 * 60 * 24);
				} else {
					System.out.println("用户名和密码的cookie已清除");
					usernameCookie.setMaxAge(0);
					passwordCookie.setMaxAge(0);
				}
				response.addCookie(usernameCookie);
				response.addCookie(passwordCookie);
				// 设置当前页面号
				session.setAttribute("currentPage", "1");
				session.setAttribute("flag", session);
				session.setAttribute("username", username);
				session.setAttribute("uId", user.getId());
				return "redirect:/jsp/login.jsp";
			}
//<script type="text/javascript" src="${pageContext.request.contextPath}/js/myCart.js"></script>
		}

	}
}
