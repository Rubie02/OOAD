package service;

import java.util.List;

import dao.CartDaoImpl;
import dao.ICartDao;
import entity.Order;

public class CartServiceImpl implements ICartService{
	ICartDao cartD = new CartDaoImpl();
	@Override
	public void insert(Order cart) {
		cartD.insert(cart);
		
	}

	@Override
	public void edit(Order cart) {
		cartD.edit(cart);
		
	}

	@Override
	public void delete(int id) {
		cartD.delete(id);
		
	}

	@Override
	public Order get(int id) {
		// TODO Auto-generated method stub
		return cartD.get(id);
	}

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		return cartD.getAll();
	}

}
