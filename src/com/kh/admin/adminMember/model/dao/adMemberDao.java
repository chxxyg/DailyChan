package com.kh.admin.adminMember.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.FileReader;
import java.io.IOException;

import com.kh.admin.adminMember.model.vo.adMember;
import static com.kh.common.JDBCTemplate.*;
import java.util.Properties;



public class adMemberDao {

	public adMember searchMember(Connection conn, String userId) {
		
		adMember m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searcgMember");
		
		
		
		
	}

}
