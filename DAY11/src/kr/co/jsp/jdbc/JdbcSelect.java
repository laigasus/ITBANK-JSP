package kr.co.jsp.jdbc;

import java.sql.*;

public class JdbcSelect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM members";

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "jsp";
		String upw = "jsp";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);

			pstmt = conn.prepareStatement(sql);

			// ResultSet의 객체를 pstmt의 executeQuery()를 통해 받아옵니다
			rs = pstmt.executeQuery();

			/*
			 * SELECT 쿼리문의 실행 결과, 조회할 데이터가 한 줄이라도 존재한다면 
			 * re객체의 next()메서드는 true값을 리턴하면서 해당 행을
			 * 지목합니다
			 */

			while (rs.next()) {
				/*
				 * SELECT의 실행 결과의 컬럼 값을 읽어오려면 
				 * rs의 getString(), getInt, getDouble등의 메서드를 사용합니다 해당
				 * 메서드의 매개값으로 읽어올 테이블의 컬럼명을 지정합니다
				 */

				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String email = rs.getString("email");

				System.out.printf("아이디\t: %s\n비밀번호\t: %s\n이름\t: %s\n이메일\t: %s\n", id, pw, name, email);
				System.out.println("----------------------------------------");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

}
