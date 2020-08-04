package kr.co.jsp.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO implements IUserDAO {

	DataSource ds;

	private UserDAO() {
		try {
			InitialContext ct = new InitialContext();
			ds = (DataSource) ct.lookup("java:comp/env/jdbc/myOracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static UserDAO dao = new UserDAO();

	public static UserDAO getInstance() {
		if (dao == null)
			dao = new UserDAO();
		return dao;
	}

	/////////////////////////////////////////////////////////

	@Override
	public boolean confirmId(String id) {
		boolean flag = false;
		String sql = "SELECT * FROM my_user WHERE user_id=?";

		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next())
				flag = true;
			else
				flag = false;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public void insertUser(UserVO vo) {
		String sql = "INSERT INTO my_user VALUES (?,?,?,?,?)";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getAddress());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public int userCheck(String id, String pw) {
		int check = 0;

		String sql = "SELECT * FROM my_user WHERE user_id=?";

		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				String dbPw = rs.getString("user_pw");
				if (dbPw.equals(pw))
					check = 1;
				else
					check = 0;
			} else
				check = -1;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return check;
	}

	@Override
	public UserVO getUserInfo(String id) {
		UserVO vo = null;
		String sql = "SELECT * FROM my_user WHERE user_id=?";

		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new UserVO(rs.getString("user_id"), rs.getString("user_pw"), rs.getString("user_name"),
						rs.getString("user_email"), rs.getString("user_address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public void changePassword(String id, String pw) {
		String sql = "UPDATE my_user SET user_pw=? " + "WHERE user_id=?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteUser(String id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM my_user WHERE user_id=?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

//비번 이름 이메일 주소
	@Override
	public boolean updateUser(UserVO vo) {
		// TODO Auto-generated method stub
		boolean flag = false;
		String sql = "UPDATE my_user " + "SET user_pw=?, user_name=?, user_email=?, user_address=? "
				+ "WHERE user_id=?";
		try (Connection conn = ds.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, vo.getPw());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getAddress());
			pstmt.setString(5, vo.getId());
			pstmt.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}

}
