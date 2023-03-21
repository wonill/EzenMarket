package com.ezen.ezenmarket.admin.mapper;

import java.util.List;

import com.ezen.ezenmarket.admin.dto.AdminDTO;

public interface LoginMapper {

	public AdminDTO getAdminInfo(String admin_id);
	
	public List<AdminDTO> getAdmin();
	
}