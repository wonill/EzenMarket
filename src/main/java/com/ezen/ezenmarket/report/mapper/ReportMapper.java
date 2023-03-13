package com.ezen.ezenmarket.report.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.Import;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.report.dto.ReportDto;


public interface ReportMapper {
	
	// insertReport 메서드를 실행하기 위한 매개변수 
	//	즉, insertReport를 실행하려면 String cause를 넣어야 한다
	
	public Integer insertReport(@Param("currentPage") String currentPage, 
													@Param("cause") String cause, 
													@Param("post_id") Integer post_id,
													@Param("user_number") Integer user_number); 
	
	public Integer insertEtc(String etc);
	
}