package kr.co.sboard2.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVo {
	
	private String uid;
	private String pass;
	private String name;
	private String nick;
	private String email;
	private String hp;
	private int grade;
	private String zip;
	private String addr1;
	private String addr2;
	private String regip;
	private String rdate;
}
