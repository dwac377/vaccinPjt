package com.office.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

import com.office.DatabaseInfo;

public class MemberDao implements DatabaseInfo{
	
//	드라이버
	

	public boolean isMember(String admin_id) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try {
//			메모리에 드라이버 로드하기
			Class.forName(DRIVER);
			
//			연결하기
			
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
//			SQL 작성하기
			
			String sql = "select "
					+ "COUNT(*) cnt "
					+ "from "
					+ 	"tbl_admin "
					+ "where "
					+ 	"admin_id = ?";
			
//			일꾼 구하고 데이터 주입
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin_id);
			
//			작업 지시 -> 데이터를 가져오는 건 Query
			rs = pstmt.executeQuery();
			
//			가져온 데이터 추출/분석
			while(rs.next()) {
//				cnt는 데이터 테에블에서 정의되며 계정마다 자동 생성됨
				result = rs.getInt("cnt");
		
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			
			try {
				
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return result == 0 ? false : true;
	}

	public int insertNewMember(MemberDto memberDto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
//		ResultSet rs = null;
		int result = -1;
		
		try {
//			메모리에 드라이버 로드하기
			Class.forName(DRIVER);
			
//			연결하기
			
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
//			SQL 작성하기
			
			String sql = "insert into "
					+ "tbl_admin(admin_id, admin_pw, admin_mail, admin_phone) "
					+ "values(?,?,?,?)";
			
//			일꾼 구하고 데이터 주입
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDto.getAdmin_id());
			pstmt.setString(2, memberDto.getAdmin_pw());
			pstmt.setString(3, memberDto.getAdmin_mail());
			pstmt.setString(4, memberDto.getAdmin_phone());
			
//			작업 지시 -> 데이터를 주입하는건 Update
//			executeUpdate는 테이블에 영향을 끼친 행의 수를 반환한다
//			만약 아무것도 추가하지 않았음 0, 행을 하나 추가했음 1을 반환
			result = pstmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			
			try {
				
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return result;
	}

	public static MemberDto selectMemberByAdminId(String id) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<MemberDto> memberDtos = new Vector<MemberDto>();
		
		try {
//			메모리에 드라이버 로드하기
			Class.forName(DRIVER);
			
//			연결하기
			
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
//			SQL 작성하기
			
			String sql = "select * from tbl_admin where admin_id = ?";
			
//			일꾼 구하고 데이터 주입
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
//			작업 지시 -> 데이터를 가져오는 건 Query
			rs = pstmt.executeQuery();
			
//			가져온 데이터 추출/분석
			while(rs.next()) {
				
				int admin_no = rs.getInt("admin_no");
				String admin_id = rs.getString("admin_id");
				String admin_pw = rs.getString("admin_pw");
				String admin_mail = rs.getString("admin_mail");
				String admin_phone = rs.getString("admin_phone");
				String admin_reg_date = rs.getString("admin_reg_date");
				String admin_mod_date = rs.getString("admin_mod_date");
				
				MemberDto memberDto = new MemberDto
						(admin_no, admin_id, admin_pw
							,admin_mail, admin_phone, admin_reg_date, admin_mod_date);
				
				memberDtos.add(memberDto);
		
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			
			try {
				
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return memberDtos.size() > 0 ? memberDtos.get(0) : null;
	}

}
