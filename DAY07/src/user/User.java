package user;

public class User {
	private String account;
	private String password;
	private String name;
	private String nickname;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String account, String password, String name, String nickname) {
		super();
		this.account = account;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
	}
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	
	
}
