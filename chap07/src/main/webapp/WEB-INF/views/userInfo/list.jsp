<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List,chap07.dto.UserInfoDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>User Info List</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/userInfo/css/userInfo.css" />
</head>
<body>
	
	<h3># User Info List</h3>
	
	<div id="listSpace">
		<div class="space-title_wrapper">
			<div class="title">User id</div>
			<div class="title">Nickname</div>
			<div class="title">Win</div>
			<div class="title">Lose</div>
			<div class="title">SignUp Date</div>
			<div class="title">Last Login Date</div>

		</div>
		<div class="space-row_wrapper">
			<%
				Object userInfo_list = request.getAttribute("userInfoList");
					
				if (userInfo_list != null) {		
					for (UserInfoDTO uid : (List<UserInfoDTO>) userInfo_list)
						out.print(uid.getDivRow());
				} else {
					out.print("<div>No userInfo here.</div>");
				}
			%>
		</div>
	</div>
</body>
</html>