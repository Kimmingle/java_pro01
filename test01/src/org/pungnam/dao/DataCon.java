package org.pungnam.dao;

//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//
//import com.sun.jdi.connect.spi.Connection;
//
//public class DataCon implements SqlLang {
//	//먼저 드라이버 설정
//	final String Driver = "oracle.jdbc.oracleDriver";
//	final String URL = "jfbc:oracle:thin:@localhost:1521:xe";
//	final String USERID ="system";
//	final String USERPW ="1234";
//	
//	Connection con =null;
//	
//	public Connection Connect() {
//		try {
//			Class.forName("Driver");
//			con = DriverManager.getConnection(URL, USERID, USERPW);  //Db 접속함
//			
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}
//}
