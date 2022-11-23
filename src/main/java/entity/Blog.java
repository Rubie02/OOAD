package entity;

public class Blog {
	private int blogId;
	private String details;
	private String blogName;
	public Blog() {
		super();
	}
	public Blog(int blogId, String details, String blogName) {
		super();
		this.blogId = blogId;
		this.details = details;
		this.blogName = blogName;
	}
	public int getBlogId() {
		return blogId;
	}
	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getBlogName() {
		return blogName;
	}
	public void setBlogName(String blogName) {
		this.blogName = blogName;
	}
	
}
