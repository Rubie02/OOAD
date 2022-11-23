package entity;

import java.sql.Date;

public class Order {
	private int orderId;
	private int cusId;
	private Date orderDate;
	private int employeeId;
	public Order() {
		super();
	}
	public Order(int orderId, int cusId, Date orderDate, int employeeId) {
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
	public int getCusId() {
		return cusId;
	}
	public void setCusId(int cusId) {
		this.cusId = cusId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	
}
