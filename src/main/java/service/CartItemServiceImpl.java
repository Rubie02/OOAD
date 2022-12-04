package service;

import java.util.List;

import dao.CartItemDaoImpl;
import dao.ICartItemDao;
import entity.OrderDetail;

public class CartItemServiceImpl implements ICartItemService{
	ICartItemDao cartItemS = new CartItemDaoImpl();
	@Override
	public void insert(OrderDetail cart) {
		cartItemS.insert(cart);
		
	}

	@Override
	public void edit(OrderDetail cart) {
		cartItemS.edit(cart);
		
	}

	@Override
	public void delete(int id) {
		cartItemS.delete(id);
		
	}

	@Override
	public OrderDetail get(int id) {
		// TODO Auto-generated method stub
		return cartItemS.get(id);
	}

	@Override
	public List<OrderDetail> getAll() {
		// TODO Auto-generated method stub
		return cartItemS.getAll();
	}

}
