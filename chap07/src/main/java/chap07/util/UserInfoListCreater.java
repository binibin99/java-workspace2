package chap07.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap07.dto.UserInfoDTO;

public class UserInfoListCreater {

	public static List<UserInfoDTO> getUserInfoList() {
		
		List<UserInfoDTO> userInfo_list = new ArrayList<>();
		String sql = "SELECT * FROM user_info ORDER BY user_id";
		
		try (
				Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hr", "1234");		
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
		) {
			while (rs.next()) {
				userInfo_list.add(new UserInfoDTO(
						rs.getInt("user_id"), 
						rs.getString("nickname"), 
						rs.getInt("win"),
						rs.getInt("lose"),
						rs.getDate("signup_date"),
						rs.getDate("lastlogin_date")
						));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return userInfo_list;
	}
	
}
