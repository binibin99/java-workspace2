package chap07.webProcess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDAO;
import chap07.dao.DBConnector;
import chap07.dto.BreadDTO;

public class BreadAddWebProcess implements WebProcess {
    
    BreadDAO BreadDao = new BreadDAO();
    
    @Override
    public String process(HttpServletRequest request) {
        String bread_name = request.getParameter("bread_name");
        Integer bread_price = Integer.parseInt(request.getParameter("bread_price"));
        
        Integer result = BreadDao.insert(new BreadDTO(bread_name, bread_price));
        
        if (result == null || result < 0) {
            return "redirect::" + request.getContextPath() + "/";
        } else {
            return "redirect::" + request.getContextPath() + "/dbtest/list2";
        }
    }

    public Integer insert(BreadDTO breadDto) {
        String sql = "INSERT INTO Bread(bread_name, bread_price) VALUES (?, ?)";
        
        try (
            Connection conn = DBConnector.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        ) {
            pstmt.setString(1, breadDto.getBread_name());
            pstmt.setInt(2, breadDto.getBread_price());
            
            int rowsAffected = pstmt.executeUpdate();
            
            if (rowsAffected > 0) {
                try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        return generatedKeys.getInt(1);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        // 삽입이 실패하거나 예외가 발생할 경우 -1 대신 다른 값을 반환하도록 수정
        return -1;
    }
}