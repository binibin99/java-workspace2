package chap07_webprocess;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDAO;

public class BreadDelWebProcess implements WebProcess{
	
	BreadDAO breadDao = new BreadDAO();
	
	@Override
	public String process(HttpServletRequest req) {
		
		String bread_name = req.getParameter("bread_name");
		
		Integer result =  breadDao.delete(bread_name);
		
		if (result == null) {
			return "redirect::" +  req.getContextPath() + "/";
		} else if (result > 0){
			return "redirect::" +  req.getContextPath() + "/bread/list";	
		} else {
			return "redirect::" +  req.getContextPath() + "/";
		}
		
	}
}
