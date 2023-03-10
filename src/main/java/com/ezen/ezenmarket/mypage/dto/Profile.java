package com.ezen.ezenmarket.mypage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Profile {
	private String nickname;
	private String user_intro;
	private String user_image;
	private Integer postCount;
	private Integer reviewCount;
}