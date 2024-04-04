package org.pungnam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.pungnam.dto.Notice;

public class NoticeDAO {
	Connection con = null;    //연결하기 위함
	PreparedStatement pstmt = null;		// sql담는 용(우리는 인터페이스로 씀)
	ResultSet rs = null; 	//결과 담는 용
	
	public List<Notice> getNoticeList(){
		List<Notice> notiList = new ArrayList<>();
		
		OracleDB oracle = new OracleDB();	//OracleDB에 오라클 드라이버 있음
		try {
			con = oracle.Connect();
			try {
				pstmt = con.prepareStatement(SqlLang.SELECT_ALL_NOTICE);
				rs = pstmt.executeQuery();    //insert일때는 update
				while(rs.next()) {
					Notice noti = new Notice(rs.getInt("no"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("resdate"),
							rs.getInt("visited")
							);
					notiList.add(noti);
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			} 
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return notiList;
	}
}
