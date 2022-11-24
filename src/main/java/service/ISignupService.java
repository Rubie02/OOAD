package service;

import entity.Account;

public interface ISignupService {
	public Account checkAccountExist(String user);
	public void signup(String user, String pass);
}
