package com.kh.admin.adminBlackList.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.admin.adminBlackList.model.vo.BlackList;
import com.kh.member.model.dao.MemberDao;


public class AdBlackListDao {
	
private Properties prop = new Properties();
	
	public AdBlackListDao() {
		String filePath = MemberDao.class.getResource("/sql/adBlackList/adBlackList-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<BlackList> selectList(Connection conn) {
		
		ArrayList<BlackList> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBlackList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				list.add(new BlackList(rset.getInt("BLACKLIST_NO"),
						               rset.getString("MEMBER_ID"),
						               rset.getString("PENALTY_CUASE"),
						               rset.getDate("PENALTY_DATE"),
						               rset.getString("NONBLOCK_YN")));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		return list;
	}

}
