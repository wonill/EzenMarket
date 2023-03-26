package com.ezen.ezenmarket.user.mapper;

import com.ezen.ezenmarket.user.dto.User2;

public interface UserXmlMapper {
	
	public Integer userSignUp(User2 user);
	
	public Integer idCheck(String id);
	
	public Integer nickCheck(String nickName);
}