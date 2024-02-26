<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	String scope = request.getParameter("scope");

	if (scope.equals("application")) {
		application.setAttribute("login", request.getParameter("login"));
	}
	
	request.getRequestDispatcher("/quiz/index2.jsp").forward(request, response);
%>