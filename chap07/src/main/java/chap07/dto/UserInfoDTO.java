package chap07.dto;

import java.util.Date;

public class UserInfoDTO {
	Integer user_id;
	String nickname;
	Integer win;
	Integer lose;
	Date signup_date;
	Date lastlogin_date;
	
	public UserInfoDTO(Integer user_id, String nickname, Integer win, Integer lose, Date signup_date,
			Date lastlogin_date) {
		super();
		this.user_id = user_id;
		this.nickname = nickname;
		this.win = win;
		this.lose = lose;
		this.signup_date = signup_date;
		this.lastlogin_date = lastlogin_date;
	}
	
	public String getDivRow() {
		return String.format(
				"<div>%d</div>"
				+ "<div>%s</div>"
				+ "<div>%d</div>"
				+ "<div>%d</div>"
				+ "<div>%s</div>"
				+ "<div>%s</div>", 
				user_id, nickname, win, lose, 
				signup_date, lastlogin_date);
	}
	

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getWin() {
		return win;
	}

	public void setWin(Integer win) {
		this.win = win;
	}

	public Integer getLose() {
		return lose;
	}

	public void setLose(Integer lose) {
		this.lose = lose;
	}

	public Date getSignup_date() {
		return signup_date;
	}

	public void setSignup_date(Date signup_date) {
		this.signup_date = signup_date;
	}

	public Date getLastlogin_date() {
		return lastlogin_date;
	}

	public void setLastlogin_date(Date lastlogin_date) {
		this.lastlogin_date = lastlogin_date;
	}

}
