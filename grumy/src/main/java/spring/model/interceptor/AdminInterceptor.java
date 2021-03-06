package spring.model.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		String root = request.getContextPath();
		try {
			// grade 세션값이 널일경우
			if (request.getSession().getAttribute("grade")==null ||!request.getSession().getAttribute("grade").equals("A")) {
				// 로그인페이지로 redirect   
				response.sendRedirect(root+"/");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 널이 아니면 정상적으로 컨트롤러 호출
		return true;
	}
}
