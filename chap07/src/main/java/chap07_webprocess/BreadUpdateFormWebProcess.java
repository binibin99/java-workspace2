package chap07_webprocess;

import javax.servlet.http.HttpServletRequest;

public class BreadUpdateFormWebProcess implements WebProcess {
	@Override
	public String process(HttpServletRequest req) {
		return "/WEB-INF/views/bread/updateForm.jsp";
	}
}
