package chap07_webprocess;

import javax.servlet.http.HttpServletRequest;

public class BreadDelFormWebProcess implements WebProcess {
	
	@Override
	public String process(HttpServletRequest req) {
		return "/WEB-INF/views/bread/deleteForm.jsp";
	}
}
