package chap07_webprocess;

import javax.servlet.http.HttpServletRequest;

public class BreadAddFormWebProcess implements WebProcess {
	@Override
	public String process(HttpServletRequest req) {
		return "/WEB-INF/views/bread/insertForm.jsp";
	}
}
