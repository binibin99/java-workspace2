<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List,chap07.dto.EmployeeDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Employee List</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dbtest/css/empList.css" />
</head>
<body>
	
	<h3># All Employees</h3>
	
	<div class="emp-list">
		<%
		Object employees = request.getAttribute("employees");
			
			if (employees != null) {
				out.print(
						"<div class=\"title\">employee_id</div>" 
						+ "<div class=\"title\">first_name</div>" 
						+ "<div class=\"title\">last_name</div>"
						+ "<div class=\"title\">salary</div>" 
						+ "<div class=\"title\">commision_pct</div>" 
						+ "<div class=\"title\">hire_date</div>"
						+ "<div class=\"title\">job_id</div>" 
						+ "<div class=\"title\">manager_id</div>" 
						+ "<div class=\"title\">department_id</div>");
				for (EmployeeDTO emp : (List<EmployeeDTO>) employees) {
					out.print(emp.getDivRow());
				}

			} else {
				out.print("<div>No employees here.</div>");
			}
		%>
	</div>
	
</body>
</html>