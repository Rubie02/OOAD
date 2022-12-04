package service;

import dao.CustomerDaoImpl;
import dao.ICustomerDao;
import entity.Customer;

public class CustomerServiceImpl implements ICustomerService{
	ICustomerDao cusD = new CustomerDaoImpl();
	@Override
	public Customer get(int id) {
		
		return cusD.get(id);
	}

}
