package com.ezen.ezenmarket.user.mapper;

import java.util.List;

import com.ezen.ezenmarket.user.dto.User;

public interface UserMapper {
	
	public List<User> selectAllUsers();
	
	public User selectUser(String user_id);
	
}
