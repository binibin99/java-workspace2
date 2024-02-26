package chap07_webprocess;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDAO;

public class BreadListWebProcess implements WebProcess {

	BreadDAO breadDAO = new BreadDAO();
	
	@Override
	public String process(HttpServletRequest req) {
		
		req.setAttribute("breads", breadDAO.getAll());
		
		return "/WEB-INF/views/bread/list.jsp";
	}
}
