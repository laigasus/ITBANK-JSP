package kr.co.jsp.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class JdbcUpdate {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		/*
		 * 회원 정보를 수정할 ID를 먼저 입력하세요 
		 * (ID는 무조건 존재한다는 가정 하에 작성하겠습니다)
		 * 수정할 정보는 이름과 이메일입니다. 수정할 이름과 이메일을 입력받아서
		 * 해당 ID의 이름과 이메일을 수정해보세요
		 */
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "jsp";
		String upw = "jsp";

		String inputString = null;

		String sql1 = "UPDATE members SET name=?, email=? WHERE id=?";
		String sql2 = "SELECT * FROM members WHERE id=?";

		Scanner sc = new Scanner(System.in);
		String rememberID;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int rn=0;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);

			pstmt = conn.prepareStatement(sql1);

			System.out.print("검색 ID: ");
			inputString = sc.next();
			rememberID = inputString;
			pstmt.setNString(3, inputString);

			System.out.print("변경할 이름: ");
			inputString = sc.next();
			pstmt.setNString(1, inputString);

			System.out.print("변경할 이메일: ");
			inputString = sc.next();
			pstmt.setNString(2, inputString);
			rs = pstmt.executeQuery();

			System.out.println("번경되었습니다");

			pstmt = conn.prepareStatement(sql2);
			pstmt.setNString(1, rememberID);
			rs = pstmt.executeQuery();
			rn = pstmt.executeUpdate();
			
			if (rs.next()) {
				System.out.println("-----------------회원정보------------------");

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
		sc.close();
	}

}
