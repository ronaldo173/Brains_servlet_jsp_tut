package ua.mycompany.ronaldo173.mvc.service;

import java.util.HashMap;
import java.util.Map;

import ua.mycompany.ronaldo173.mvc.dto.User;

public class LoginService {

	Map<String, String> users = new HashMap<>();

	/**
	 * 
	 */
	public LoginService() {
		users.put("ronaldo173", "Alexandr");
		users.put("johndoe", "John Doe");
	}

	/**
	 * Authenticate user.
	 * 
	 * @return true if success
	 */
	public boolean authenticate(String userId, String password) {
		if (password == null || password.trim().isEmpty()) {
			return false;
		}
		return true;
	}

	public User getUserDetails(String userId) {
		User user = new User();
		user.setUserId(userId);
		user.setUserName(users.get(userId));
		return user;
	}
}
