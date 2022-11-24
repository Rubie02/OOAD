package dao;

import entity.Account;

public interface ISignupDao {
	public Account checkAccountExist(String user);
	public void signup(String user, String pass);
}
