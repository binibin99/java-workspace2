package board.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dao.ReplyDAO;
import board.dto.BoardDTO;

public class BoardDetailService implements Service {
	
	private static BoardDetailService instance = new BoardDetailService();
	BoardDAO boardDAO = new BoardDAO();
	ReplyDAO replyDAO = new ReplyDAO();
	
	public static BoardDetailService getInstance() {
		return instance;
	}
	
	private BoardDetailService() {}

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		
		boolean plused = false;
		
		Cookie[] cookies = request.getCookies();
		
		// 글 번호와 같은 이름을 지닌 쿠키가 존재하는지 여부를 체크
		// 해당 쿠키가 존재하면 글 조회수를 증가시킨 적이 있다는 뜻
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("" + board_id)) {
					plused = true;
				}
			}
		}
		
		// 글 번호와 같은 이름의 쿠키가 조회된적이 없다면 조회수를 증가시키고 쿠키를 등록
		if (!plused) {
			int row = boardDAO.plusView(board_id);
			response.addCookie(new Cookie("" + board_id, "1"));
			if (row < 1) {
				return "/WEB-INF/views/board/detailNotFound.jsp";
			}
		}
		
		BoardDTO detail = boardDAO.get(board_id);
		
		if (detail != null) {
			request.setAttribute("detail", detail);
			request.setAttribute("replies", replyDAO.getBoardReplies(board_id));
			return "/WEB-INF/views/board/detail.jsp";						
		} else {
			return "/WEB-INF/views/board/detailNotFound.jsp";
		}
		
	}
}
