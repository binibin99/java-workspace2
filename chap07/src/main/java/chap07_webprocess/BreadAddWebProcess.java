package chap07_webprocess;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDAO;
import chap07.dto.BreadDTO;

public class BreadAddWebProcess implements WebProcess{
	
	BreadDAO breadDao = new BreadDAO();
	
	@Override
	public String process(HttpServletRequest req) {
		
		String bread_name = req.getParameter("bread_name");
		Integer bread_price = Integer.parseInt(req.getParameter("bread_price"));
		
		Integer result = breadDao.insert(new BreadDTO(bread_name, bread_price));
		
		if (result == null) {
			return "redirect::" +  req.getContextPath() + "/";
		} else if (result > 0){
			return "redirect::" +  req.getContextPath() + "/bread/list";	
		} else {
			return "redirect::" +  req.getContextPath() + "/";
		}
		
	}
}
