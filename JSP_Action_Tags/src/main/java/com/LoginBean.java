package com;

public class LoginBean {
	
	private String username;
	private String password;
	
	public LoginBean() {
		super();
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean isValid(){
		if(username!=null && password!=null && username.equals("seed") && password.equals("infotech"))
			return true;
		else
			return false;
	}
}