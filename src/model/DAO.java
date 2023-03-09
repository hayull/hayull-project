package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	private Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","hr","1234");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void insert(DTO dto) {
		String sql ="insert into tbl_record_202106 values(?,?,?,?,?,?, ?,?,?,?)";

		try {
			conn=getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEntry_no());
			pstmt.setInt(2, dto.getScore1());
			pstmt.setInt(3, dto.getScore2());
			pstmt.setInt(4, dto.getScore3());
			pstmt.setInt(5, dto.getScore4());
			pstmt.setInt(6, dto.getScore5());
			pstmt.setInt(7, dto.getS_max());
			pstmt.setInt(8, dto.getS_min());
			pstmt.setInt(9, dto.getS_tot());
			pstmt.setDouble(10, dto.getS_ave());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public DTO select(String entry_no) {
		DTO dto = new DTO();
		String sql="select a.entry_no, entry_name,entry_jumin,entry_type,entry_area,\r\n" + 
				"    score1, score2, score3, score4, score5,s_tot,s_ave\r\n" + 
				"from tbl_entry_202106 a,tbl_record_202106 b\r\n" + 
				"where a.entry_no = b.entry_no and a.entry_no="+entry_no;
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setEntry_no(rs.getString("entry_no"));
				dto.setEntry_name(rs.getString("entry_name"));
				dto.setEntry_jumin(rs.getString("entry_jumin"));
				dto.setEntry_type(rs.getString("entry_type"));
				dto.setEntry_area(rs.getString("entry_area"));
				dto.setScore1(rs.getInt("score1"));
				dto.setScore2(rs.getInt("score2"));
				dto.setScore3(rs.getInt("score3"));
				dto.setScore4(rs.getInt("score4"));
				dto.setScore5(rs.getInt("score5"));
				dto.setS_tot(rs.getInt("s_tot"));
				dto.setS_ave(rs.getDouble("s_ave"));
			}

		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public List<DTO> list1() {
		List<DTO> list = new ArrayList<DTO>();
		String sql="select a.entry_no, entry_name,entry_jumin,entry_type,entry_area,\r\n" + 
				"    s_tot,s_ave\r\n" + 
				"from tbl_entry_202106 a,tbl_record_202106 b\r\n" + 
				"where a.entry_no = b.entry_no \r\n" + 
				"order by s_tot desc , entry_no";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				DTO dto = new DTO();
				dto.setEntry_no(rs.getString("entry_no"));
				dto.setEntry_name(rs.getString("entry_name"));
				dto.setEntry_jumin(rs.getString("entry_jumin"));
				dto.setEntry_type(rs.getString("entry_type"));
				dto.setEntry_area(rs.getString("entry_area"));
				dto.setS_tot(rs.getInt("s_tot"));
				dto.setS_ave(rs.getDouble("s_ave"));
				list.add(dto);
			}

		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}



}
