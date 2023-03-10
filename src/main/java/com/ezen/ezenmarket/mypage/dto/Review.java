package com.ezen.ezenmarket.mypage.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Review {
	private Integer user_number;
	private String nickname;
	private String title;
	private String user_image;
	private String review_content;
}