package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;

public class BoardModifyFormService implements Service {
	
	private static BoardModifyFormService instance = new BoardModifyFormService();
	BoardDAO dao = new BoardDAO();
	
	public static BoardModifyFormService getInstance() {
		return instance;
	}
	
	private BoardModifyFormService() {}
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			
			int boadr_id = Integer.parseInt(request.getParameter("board_id"));
			
			BoardDTO oldData = dao.get(boadr_id);
			
			if (oldData != null) {
				request.setAttribute("oldData", oldData);
				return "/WEB-INF/views/board/modifyForm.jsp";
			} else {
				return "redirect::/";
			}

		} catch (Exception e) {
			e.printStackTrace();
			return "redirect::/";
		}
		
	}
}
