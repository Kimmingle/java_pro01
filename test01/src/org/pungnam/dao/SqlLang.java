package org.pungnam.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//표준 sql만 넣어서 씀
public interface SqlLang {
	String SELECT_ALL_MEMBER = "select * from members order by id";
	String SELECT_MEMBER_BYID = "select * from members where id=?";
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	String INS_NOTICE = "insert into notice values (nseq.nextval, ?, ?, sysdate, 0)";
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	String VISITED_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
	String DEL_NOTICE = "delete from notice where no=?";
	String SELECT_ONE_MEMBER = "select * from members where id=?";
	String INS_MEMBER = "insert into members values(?,?,?,?,?,?)";
	String UPD_MEMBER = "update members set pw=?,name=?, age =?, email=?,visited=? where id=?";
	String DEL_MEMBER = "delete from members where id=?";
}
	

