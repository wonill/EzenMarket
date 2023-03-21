package com.ezen.ezenmarket.admin.service;


public interface AdminMainPageService{
	
	int getReportCount();
	int getPostCount();
	int getTodayVisitor();
	int getThisMonthVisitor();
	int[] getWeekdayVisitorCount();
	
	int getCategoryFirst();
	int getCategorySecond();
	int getCategoryThird();
}