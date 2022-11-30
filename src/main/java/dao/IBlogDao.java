package dao;

import java.util.List;

import entity.Blog;



public interface IBlogDao {
	public List<Blog> getAllBlog();
	public Blog getBlogByID(String bID);
	public void insertBlog(String details,  String blogName, String blogImage);
	public void deleteBlog(String bId);

}
