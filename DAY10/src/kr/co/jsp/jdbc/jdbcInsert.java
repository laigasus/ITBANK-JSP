package kr.co.jsp.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

public class jdbcInsert {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		System.out.println("#아이디: ");
		String id = sc.next();

		System.out.println("#비밀번호: ");
		String pw = sc.next();

		System.out.println("#이름: ");
		String name = sc.next();

		System.out.println("#이메일: ");
		String email = sc.next();

		// sql문 작성
		// sql문은 String형태로 작성

		String sql = "INSERT INTO members VALUES(?, ?, ?, ?)";
		// DB 연동 순서
		// 1. DB사용자 계정명, 암호, DB url 등 초기 데이터 변수를 설정

		String uid = "jsp";
		String upw = "jsp";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";// 11G 버전
		// String url="jdbc:oracle:thin:@localhost:1521/XEPDB1";18G 버전
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			// TODO Auto-generated catch block
			// 2. JDBC 커넥터 드라이버 호출

			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 3. DB연동을 위한 클래스들의 객체를 생성

			/*
			 * a - Connection 객체: DB와의 연결을 위한 객체. 
			 * Connection 객체를 생성하려면 직접 new 연산자를 통해객체를생성하는 것이 아니고, 
			 * DriverMamager클래스가 제공하는 정적 메소드인 getConnection()을 호출하여 객체를 생성합니다.
			 */

			conn = DriverManager.getConnection(url, uid, upw);
			/*
			 * b - PreparedStatement 객체: SQL문을 실행시키기 위한 객체 pstmt객체는 conn객체가 제공하는
			 * prepareStatment() 메서드를 호출하여 객체를 받아둡니다. 
			 * 매개값으로 실행시킬 sql문을 전달합니다.
			 */

			pstmt = conn.prepareStatement(sql);

			/*
			 * c - 물음표 채우기(sql문 완성하기) -pstmt 객체를 생성했다면 sql 문의 ?를 채워줍니다. 
			 * ?는 첫 번째 물음표부터 1번인덱스를 가지며, 순차적으로 인덱스가 1씩 증가합니다. 
			 * -DB테이블의 컬럼 타입에 따라 setString(), setInt()등의 메서드를사용하여 ?를 채웁니다.
			 */

			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);

			/*
			 * d - pstmt 객체를 통한 SQL문 실행
			 * 1. INSERT, UPDATE, DELETE명령일 경우 executeUpdate()를 호출합니다
			 * 
			 * 2. SELECT명령일 경우 executeQuery()를 호출합니다
			 * 
			 * 3. executeUpdate()는 sql문 실행 성공시 성공한 쿼리문의 갯수를, 실패시 0을 리턴합니다.
			 */

			int result=pstmt.executeUpdate();
			
			if (result == 1)
				System.out.println("DB에 회원정보 저장 성공!");
			else
				System.out.println("DB에 회원정보 저장 실패!");
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			/*
			 * 4. DB 연동 객체들 자원 반납
			 * - 원활한 JDBC 프로그래밍을 위해 사용한 자원을 반납합니다.
			 * */
			
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
