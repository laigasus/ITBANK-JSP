package kr.co.jsp.scores.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * DAO는 웹 서버의 DB연동 요청이 발생할 때마다 DataBase CRUD(create, read, update, delete)작업을
 * 전담하는 클래스입니다
 */

public class ScoreDAO {
	// 싱글톤 디자인 패턴(객체의 생성을 단 하나로 제한하기 위한 코드 디자인 패턴)
	// 1. 클래스 외부에서 객체를 생성하지 못하게 생성자에 private 접근 제한을 붙임

	private ScoreDAO() {
		try {
			Class.forName("oracle.jdb.driver.OracleDriver");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 2. 객체를 생성할 수 있는 영억은 해당 클래스의 내부 뿐이므로 스스로의 객체를 단 1개만 생성
	private static ScoreDAO dao = new ScoreDAO();

	// 3. 외부에서 객체를 요구할 시 공개된 메서드를 통해
	// 2번에서 미리 만들어 놓은 단 하나의 객체의 주소값을 리턴

	public static ScoreDAO getInstance() {
		if (dao == null) {
			dao = new ScoreDAO();
		}
		return dao;
	}
	/////////////////////////////////////////////////////////////////

	// DB관련 작업 메서드가 들어가는 공간

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// Connection 객체를 제공하는 메서드
	private static Connection getConnection() {
		String url="jdbc:oracle:this:@localhost:1521:xe";
		String uid="jsp";
		String upw="jsp";
		
		try {
			return DriverManager.getConnection(url, uid, upw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 점수 데이터를 저장하는 메서드

	public boolean insert(Scores score) {
		try {
			conn=getConnection();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
