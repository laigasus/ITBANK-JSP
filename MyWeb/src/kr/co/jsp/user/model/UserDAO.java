package kr.co.jsp.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import sun.security.jca.GetInstance;

public class UserDAO implements IUserDAO {

	DataSource ds;

	private UserDAO() {
		// TODO Auto-generated constructor stub
		try {
			InitialContext ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/myOracle");

		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static UserDAO dao = new UserDAO();

	public static UserDAO getInstance() {
		if (dao == null)
			dao = new UserDAO();

		return dao;
	}

	/////////////////////////////////////////

	@Override
	public boolean confirmId(String id) {
		// TODO Auto-generated method stub
		boolean flag = false;

		String sql = "SELECT * FROM my_user WHERE user_id=?";
		
		try(
				Connection conn=ds.getConnection();
				PreparedStatement pstmt=conn.prepareStatement(sql)){
					pstmt.setNString(1,  id);
					ResultSet rs=pstmt.executeQuery();
					
					if(rs.next()) flag=true;
					else flag=false;
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				

		return false;
	}

	@Override
	public void insertUser(UserVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int userCheck(String id, String pw) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVO getUserInfo(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
