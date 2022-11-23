package entity;

public class Customer {
	private int cusId;
	private String cusName;
	private String cusAddress;
	private String cusPhoneNumber;
	private int rank; //1-2-3-4 : Bronze-Silver-Gold-Diamond
	private String username;
	public Customer() {
		super();
	}
	public Customer(int cusId, String cusName, String cusAddress, String cusPhoneNumber, int rank, String username) {
		super();
		this.cusId = cusId;
		this.cusName = cusName;
		this.cusAddress = cusAddress;
		this.cusPhoneNumber = cusPhoneNumber;
		this.rank = rank;
		this.username = username;
	}
	public int getCusId() {
		return cusId;
	}
	public void setCusId(int cusId) {
		this.cusId = cusId;
	}
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	public String getCusAddress() {
		return cusAddress;
	}
	public void setCusAddress(String cusAddress) {
		this.cusAddress = cusAddress;
	}
	public String getCusPhoneNumber() {
		return cusPhoneNumber;
	}
	public void setCusPhoneNumber(String cusPhoneNumber) {
		this.cusPhoneNumber = cusPhoneNumber;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
