package board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDAO;
import board.dto.BoardDTO;
import board.secure.SecureTools;

public class BoardWriteService implements Service{
	
	private static BoardWriteService instance = new BoardWriteService();
	private BoardDAO dao = new BoardDAO();
	
	public static BoardWriteService getInstance() {
		return instance;
	}
	
	private BoardWriteService() {}

	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) {
		
		String board_title = request.getParameter("board_title");
		String board_content = request.getParameter("board_content");
		String board_writer = request.getParameter("board_writer");
		String board_password = request.getParameter("board_password");
		
		// 필요하다면 입력값에 대한 검사를 진행
		
		//
		
		BoardDTO dto = new BoardDTO();
		
		dto.setBoard_title(board_title);
		dto.setBoard_content(board_content);
		dto.setBoard_writer(board_writer);
		dto.setBoard_password(SecureTools.genHashedPassword(board_password));

		int result = dao.write(dto);

		return "redirect::/";
	}
}
