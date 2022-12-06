package service;

import java.util.List;

import dao.AccountDaoImpl;
import dao.IAccountDao;
import entity.Account;

public class AccountServiceImpl implements IAccountService{
	IAccountDao accountDao = new AccountDaoImpl();
	@Override
	public void insertAccount(String user, String pass, int type, String email) {
		accountDao.insertAccount(user, pass, type, email);
		
	}

	@Override
	public void deleteAccount(String user) {
		accountDao.deleteAccount(user);
		
	}

	@Override
	public List<Account> getAllAccount() {
		return accountDao.getAllAccount();
	}

	@Override
	public void editAccount(String user, String pass, int type, String email) {
		accountDao.editAccount(user, pass, type, email);
		
	}

	@Override
	public Account getAccByUsername(String username) {
		// TODO Auto-generated method stub
		return accountDao.getAccByUsername(username);
	}

}
