package chap07.webProcess;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDAO;


public class BreadListWebProcess implements WebProcess {
	
	BreadDAO breadDao = new BreadDAO();

	@Override
	public String process(HttpServletRequest request) {
		request.setAttribute("breads", breadDao.getAll());

		return "/WEB-INF/views/bread/list.jsp";
	}
}

