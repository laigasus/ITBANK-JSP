package kr.co.jsp.jdbc;

import java.sql.*;
import java.util.Scanner;

public class JdbcSelect2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "jsp";
		String upw = "jsp";

		String inputString = null;
		//String sql = "SELECT * FROM members WHERE id=";
		String sql = "SELECT * FROM members WHERE id=?";
		
		Scanner sc = new Scanner(System.in);

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, upw);

			System.out.print("검색 ID: ");
			inputString = sc.next();
			// System.out.printf("%s\n", inputString);
			
			//pstmt = conn.prepareStatement(sql+"'"+inputString+"'");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setNString(1, inputString);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				System.out.println("-----------------회원정보------------------");

					String id = rs.getString("id");
					String pw = rs.getString("pw");
					String name = rs.getString("name");
					String email = rs.getString("email");
					
					System.out.printf("아이디\t: %s\n비밀번호\t: %s\n이름\t: %s\n이메일\t: %s\n", id, pw, name, email);
					System.out.println("----------------------------------------");
			}
			else
			{
				System.out.println("회원 정보가 없습니다!");
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
