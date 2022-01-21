package kr.co.mlec.member.service;

import kr.co.mlec.member.dao.LoginDAO;
import kr.co.mlec.member.vo.LoginVO;

public class LoginService {

	private LoginDAO loginDao;

	public LoginService() {
		loginDao = new LoginDAO();
	}

	public LoginVO login(LoginVO loginVO) {

		return loginDao.login(loginVO);
	}
}
