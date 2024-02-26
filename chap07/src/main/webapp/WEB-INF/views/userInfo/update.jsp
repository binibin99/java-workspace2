<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List,chap07.dto.UserInfoDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>User Info Update</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/userInfo/css/userInfo.css" />
</head>
<body>

	<h3># User Info Update</h3>
	
	<div id="selectSpace">
		<div>Update as user_id or Nickname</div>
		<select form="form" name="select">
			<option value="user_id">user_id</option>
	        <option value="nickname">nickname</option>
		</select>
		<input type="text" form="form" name="where">
		<button type="submit" form="form">update</button>
	</div>
	
	<div id="inputSpace">
		<div class="space-title_wrapper">
			<% 
				out.print(
							"<div class=\"title\">User id</div>" 
							+ "<div class=\"title\">Nickname</div>" 
							+ "<div class=\"title\">Win</div>"
							+ "<div class=\"title\">Lose</div>" 
							+ "<div class=\"title\">SignUp Date</div>" 
							+ "<div class=\"title\">Last Login Date</div>");
			%>
		</div>
		<div class="space-row_wrapper">
			<input type="text" name="user_id" form="form">
			<input type="text" name="nickname" form="form">
			<input type="number" name="win" form="form" min="0" max="9999">
			<input type="number" name="lose" form="form" min="0" max="9999">
			<input type="date" name="signup_date" form="form">
			<input type="date" name="lastlogin_date" form="form">
		</div>
	</div>
	<form action="./update/handler" id="form" method="post"></form>
	
	<br>
	<hr>
	<br>
	
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