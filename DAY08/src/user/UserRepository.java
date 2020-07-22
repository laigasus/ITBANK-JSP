package user;

import java.util.ArrayList;

public class UserRepository {
	private static ArrayList<User> userList = new ArrayList<>();

	public static void save(User user) {
		userList.add(user);
	}

	// 회원 정보 저장 후 리스트 내부를 살펴보는 메서드

	public static void showUsers() {
		System.out.println("### 회원 정보 ###");

		for (User user : userList) {
			System.out.println("아이디: " + user.getAccount());
			System.out.println("비밀번호: " + user.getPassword());
			System.out.println("이름: " + user.getName());
			System.out.println("별명: " + user.getNickname());

		}
	}

	// 매개값으로 id를 받아서 해당 id를 가진 객체가 userList에 있는지 탐색하는 메서드
	public static User getUser(String id) {
		for (User user : userList) {
			if (user.getAccount().contentEquals(id)) {
				return user;
			}
		}
		return null;
	}

	public static User deleteUser(String id) {
//		for(User user: userList) {
//			if(user.getAccount().contentEquals(id))
//			{
//				userList.remove(user);
//			}
//		}
		userList.remove(getUser(id));
		return null;
	}
}
