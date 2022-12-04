package dao;

import java.util.List;

import entity.Order;

public interface ICartDao {
	void insert(Order cart);
	void edit(Order cart);
	void delete(int id);
	Order get(int id);
	List<Order> getAll();
}
