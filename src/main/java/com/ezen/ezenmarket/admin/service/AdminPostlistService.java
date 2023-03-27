package com.ezen.ezenmarket.admin.service;

public interface AdminPostlistService {

	int getTodayPostCount();
	int getLastMonthPostCount();
	int getThisMonthEndDealPostCount();
}