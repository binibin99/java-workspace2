package chap07_webprocess;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDAO;
import chap07.dto.BreadDTO;

public class BreadUpdateWebProcess implements WebProcess{
	
	BreadDAO breadDao = new BreadDAO();
	
	@Override
	public String process(HttpServletRequest req) {
		
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String bread_name = req.getParameter("bread_name");
		String new_bread_name = req.getParameter("new_bread_name");
		Integer new_bread_price = null;
		
		if (req.getParameter("new_bread_price") != null 
				|| !req.getParameter("new_bread_price").equals("")) {
			new_bread_price = Integer.parseInt(req.getParameter("new_bread_price"));
		}
		
		Integer result = breadDao.update(new BreadDTO(new_bread_name, new_bread_price), bread_name);
		
		if (result == null) {
			return "redirect::" +  req.getContextPath() + "/";
		} else if (result > 0){
			return "redirect::" +  req.getContextPath() + "/bread/list";	
		} else {
			return "redirect::" +  req.getContextPath() + "/";
		}
	}
}
