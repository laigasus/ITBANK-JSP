package user;

import java.util.ArrayList;

public class UserRepository {
	private static ArrayList<User> userList=new ArrayList<>();
	
	public static void save(User user) {
		userList.add(user);
	}
	
	//회원 정보 저장 후 리스트 내부를 살펴보는 메서드
	
	public static void showUsers()
	{
		System.out.println("### 회원 정보 ###");
		
		
		for(User user: userList) {
			System.out.println("아이디: "+user.getAccount());
			System.out.println("비밀번호: "+user.getPassword());
			System.out.println("이름: "+user.getName());
			System.out.println("별명: "+user.getNickname());
			
		}
	}
}
