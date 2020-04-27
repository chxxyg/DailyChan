package com.kh.admin.adminOneInquiry.model.dao;

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

import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;
import com.kh.member.model.dao.MemberDao;

public class AdOneInquiryDao {
	
	private Properties prop = new Properties();
	
	public AdOneInquiryDao() {
		String filePath = MemberDao.class.getResource("/sql/adOneInquiry/adOneInquiry-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<AdOneInquiry> selectList(Connection conn) {
		
		ArrayList<AdOneInquiry> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			while(rset.next()) {
				list.add(new AdOneInquiry(rset.getInt("INQUIRY_BOARD_NO"),
										  rset.getDate("INQUIRY_CREATE_DATE"),
										  rset.getString("MEMBER_ID"),
										  rset.getString("INQUIRY_TITLE"),
										  rset.getString("INQUIRY_CONTENT"),
										  rset.getString("INQUIRY_RESPONSE_YN")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

}
