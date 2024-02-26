package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.util.UriParser;
import chap07_webprocess.BreadAddFormWebProcess;
import chap07_webprocess.BreadAddWebProcess;
import chap07_webprocess.BreadDelFormWebProcess;
import chap07_webprocess.BreadDelWebProcess;
import chap07_webprocess.BreadListWebProcess;
import chap07_webprocess.BreadUpdateFormWebProcess;
import chap07_webprocess.BreadUpdateWebProcess;
import chap07_webprocess.DBTestWebProcess;
import chap07_webprocess.IndexWebProcess;
import chap07_webprocess.WebProcess;

public class ApplicationServlet extends HttpServlet {
	
//	{
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}
	
	
	static Map<String, WebProcess> uriMapping = new HashMap<>();
	
	static {
		// (1) 전달받은 URI(cmd)에 따라 알맞은 웹 프로세스를 꺼내줄 수 있는 맵을 생성해두면
		//	   if문을 안쓸수 있다 (커맨트 패턴)
		uriMapping.put("GET::/", new IndexWebProcess());
		uriMapping.put("GET::/dbtest/list", new DBTestWebProcess());
		uriMapping.put("GET::/bread/list", new BreadListWebProcess());
		uriMapping.put("GET::/bread/add", new BreadAddFormWebProcess());
		uriMapping.put("POST::/bread/add", new BreadAddWebProcess());
		uriMapping.put("GET::/bread/delete", new BreadDelFormWebProcess());
		uriMapping.put("POST::/bread/delete", new BreadDelWebProcess());
		
		uriMapping.put("GET::/bread/update", new BreadUpdateFormWebProcess());
		uriMapping.put("POST::/bread/update", new BreadUpdateWebProcess());
	}
	

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cmd = UriParser.getCmd(req);
		
		// 1. uri를 문자열 형태로 전달 받는다
		// 2. 해당 uri에 알맞은 처리를 한다(DB작업 등..)
		// 3. 내가 다음으로 가야할 뷰 페이지로 포워드 하거나 리다이렉트 한다
		
		String nextPage = uriMapping.get(cmd).process(req);
		
		if (nextPage.startsWith("redirect::")) {
			resp.sendRedirect(nextPage.substring("redirect::".length()));
		} else {
			req.getRequestDispatcher(nextPage).forward(req, resp);			
		}
		
		
		
		
		
		// if문을 사용할때의 문제점 - 끝도없이 늘어나기 때문에 소스코드가 길어져서 유지보수가 힘들다
		// 결론 : 엄청나게 늘어날 수 있는 if문은 제거해야 한다 - 인터페이스와 Map을 활용
//		if (cmd.equals("/")) {
//	
//			req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
//			
//		} else if (cmd.equals("/dbtest/list")) {
//			
//			// DB에서 값을 꺼낸 후
//			try (
//					Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");		
//					PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM employees");
//					ResultSet rs = pstmt.executeQuery();
//			) {
//				// dto : 읽기/쓰기 가능
//				// vo  : 읽기 전용
//				List<EmployeeDTO> employees = new ArrayList<>();
//
//				while (rs.next()) {
//					employees.add(new EmployeeDTO(
//							rs.getInt("employee_id"), 
//							rs.getString("first_name"), 
//							rs.getString("last_name"), 
//							rs.getDouble("salary"), 
//							rs.getDouble("commission_pct"), 
//							rs.getDate("hire_date"), 
//							rs.getString("job_id"), 
//							rs.getInt("manager_id"), 
//							rs.getInt("department_id")));
//				}
//				
//				// 처리 후 어트리뷰트에 데이터 적재
//				req.setAttribute("employees", employees);
//
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			
//			// 포워딩
//			req.getRequestDispatcher("/WEB-INF/views/dbtest/list.jsp").forward(req, resp);
//			
//		}
		
	}
}
