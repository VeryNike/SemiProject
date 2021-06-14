package user.model.vo;

public class User {

	private String userId;   
	private String userPwd;  
	private String userName; 
	private String nickName; 
	private int age;		
	private String gender;   
	private String phone;    
	private String email;    
	private String address;  
	private String ffood;    
	private String sort;     
	private String mRating;  
	private String status;   
	
	public User() {
		
	}
	
	public User(String userId, String userPwd) {
		this.userId=userId;
		this.userPwd=userPwd;
	}

	public User(String userId, String userPwd, String gender, int age,String userName, String nickName, String address, 
			String email, String phone, String mRating, String ffood, String sort, String status) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.gender = gender;
		this.age = age;
		this.userName = userName;
		this.nickName = nickName;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.mRating = mRating;
		this.ffood = ffood;
		this.sort = sort;
		this.status = status;
	}

	public User(String userId, String userPwd, String userName, String nickName, int age, String gender, String phone,
			String email, String address, String ffood, String mRating) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.ffood = ffood;
		this.mRating = mRating;
	}




	public User(String userId, String userPwd, String userName, String nickName, int age, String gender, String phone,
			String email, String address, String ffood) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.ffood = ffood;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFfood() {
		return ffood;
	}

	public void setFfood(String ffood) {
		this.ffood = ffood;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getmRating() {
		return mRating;
	}

	public void setmRating(String mRating) {
		this.mRating = mRating;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", nickName=" + nickName
				+ ", age=" + age + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", address="
				+ address + ", ffood=" + ffood + ", sort=" + sort + ", mRating=" + mRating + ", status=" + status + "]";
	}

	
	
}
