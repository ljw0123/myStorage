package com.codingbox.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.codingbox.web.dbconnection.DBConnection;
import com.codingbox.web.dto.MemberDTO;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	//회원가입
	public boolean join(MemberDTO mDto) {
		boolean result = false;
		String sql ="INSERT INTO TBL_MEMBER VALUES (?,?,?,?,?)";
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, mDto.getUserid());
			pstm.setString(2, mDto.getUserpw());
			pstm.setString(3, mDto.getUsername());
			pstm.setString(4, mDto.getUsergender());
			pstm.setString(5, mDto.getUserphone());
			if(pstm.executeUpdate() != 0) { // 성공
				result = true;
			} else { 						// 실패
				result = false;
			}
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL 예외 발생");
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("예외 발생");
		}
		
		return result;
	}
}
