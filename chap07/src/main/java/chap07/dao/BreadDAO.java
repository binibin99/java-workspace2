package chap07.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import chap07.dto.BreadDTO;

public class BreadDAO {
	
	public List<BreadDTO> getAll() {
		String sql = "SELECT * FROM bread";
		List<BreadDTO> list = new ArrayList<>();
		
		try (
			Connection conn = DBConnector.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
		) {
			while(rs.next()) {
				list.add(new BreadDTO(
						rs.getString("bread_name"), 
						rs.getInt("bread_price")));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return list;
	}
	
	public Integer insert(BreadDTO breadDTO) {

		// 나중에 테이블이 수정되는것에 대비해 컬럼명을 다 쓰는것이 바람직하다
		String sql = "INSERT INTO bread (bread_name,bread_price) VALUES (?,?)";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, breadDTO.getBread_name());
			pstmt.setInt(2, breadDTO.getBread_price());
			
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} 
		
	}
	
	public Integer delete(String bread_name) {
		
		String sql = "DELETE FROM bread WHERE bread_name = ?";
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, bread_name);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} 		
	}
	
	public Integer update(BreadDTO breadDTO, String targetBread) {
		
		String updateAll_sql = "UPDATE bread SET bread_name = ?, bread_price = ? WHERE bread_name = ?";
		String updatePrice_sql = "UPDATE bread SET bread_price = ? WHERE bread_name = ?";
		
		String sql = null;
		
		System.out.println("타겟빵: " + targetBread);
		System.out.println("새로운 빵 이름 :" + breadDTO.getBread_name());
		System.out.println("새로운 빵 가격 :" + breadDTO.getBread_price());
		
		String new_bread_name = breadDTO.getBread_name();
		Integer new_bread_price = breadDTO.getBread_price();
		
		
		if (new_bread_name.equals("") || new_bread_name == null) {
			sql = updatePrice_sql;
		} else {
			sql = updateAll_sql;
		}
		
		
		try (
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			if (new_bread_name.equals("") || new_bread_name == null) {
				pstmt.setInt(1, new_bread_price);
				pstmt.setString(2, targetBread);
			} else {
				pstmt.setString(1, new_bread_name);
				pstmt.setInt(2, new_bread_price);
				pstmt.setString(3, targetBread);
			}
			
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} 
		
	}
}
