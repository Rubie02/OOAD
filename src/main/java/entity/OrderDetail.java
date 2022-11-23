package entity;

public class OrderDetail {
	private int orderId;
	private int productId;
	private float unitPrice;
	private int quantity;
	private float discount;
	public OrderDetail() {
		super();
	}
	public OrderDetail(int orderId, int productId, float unitPrice, int quantity, float discount) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.discount = discount;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	
}
