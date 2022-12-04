package entity;

import java.sql.Date;

public class Order{ //Cart
	private int orderId;
	private Customer cusId;
	private Date orderDate;
	private Employee employeeId;
	public Order() {
		super();
	}
	public Order(int orderId, Customer cusId, Date orderDate, Employee employeeId) {
		super();
		this.orderId = orderId;
		this.cusId = cusId;
		this.orderDate = orderDate;
		this.employeeId = employeeId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Customer getCusId() {
		return cusId;
	}
	public void setCusId(Customer cusId) {
		this.cusId = cusId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Employee getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Employee employeeId) {
		this.employeeId = employeeId;
	}
	
	
}
