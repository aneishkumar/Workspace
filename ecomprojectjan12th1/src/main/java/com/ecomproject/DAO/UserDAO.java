package com.ecomproject.DAO;
import java.util.List;
import com.ecomproject.model.*;

public interface UserDAO {
	

	public void adduser(User user);
	public List<User> getUserlist();
	 public void deleteuser(String id);
	 public User getuser(String id);
	 public void edituser(User user);
	
}
