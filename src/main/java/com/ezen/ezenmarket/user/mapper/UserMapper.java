package com.ezen.ezenmarket.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ezen.ezenmarket.user.dto.User;

public interface UserMapper {
	
	public List<User> selectAllUsers();
	
	public User selectUser(String user_id);
	
    public User getUserInfo(String user_id);
	
	public List<User> getUserList();
	
	/*아이디 찾기 - 정확한 이름과 이메일을 입력하면 아이디 보여주기 */
	 @Select("SELECT user_id FROM userlist WHERE user_name = #{user_name} AND email = #{email}")
	    User getUserId(@Param("user_name") String user_name, @Param("email") String email);
	 
	 @Select("SELECT * FROM userlist WHERE user_id = #{user_id} AND user_name = #{user_name} AND email = #{email}")
	    public User findUserById(@Param("user_id") String user_id, @Param("user_name") String user_name, @Param("email") String email);
	 
	 /* 비밀번호 변경 - 정확한 아이디와 이름, 이메일 입력 시 비밀번호 변경 가능 */
	 @Update("UPDATE userlist SET user_pw = #{new_password} WHERE user_id = #{user_id}")
	 void updateUserPw(@Param("new_password") String new_password, @Param("user_id") String user_id);
	 
	 
	 
	

}