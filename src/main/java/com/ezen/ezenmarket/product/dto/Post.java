package com.ezen.ezenmarket.product.dto;

import java.sql.Date;
import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Component;

import com.ezen.ezenmarket.user.dto.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class Post extends PostImage {
	
	private Integer post_id;
	@NonNull
	private Integer user_number;
	@NonNull
	private String post_address;
	@NonNull
	private String title;
	@NonNull
	private String post_content;
	@NonNull
	private Integer category_id;
	@NonNull
	private Integer price;
	
	private String created;
	private Date updated;
	private Integer post_view;
	
	
	
	
	private Category category;
	private String category_name;

	private Wishlist wishlist;
	private Integer wishlist_id;
	
	private User user;	
	private String nickname;
	private String user_image;
	
	DecimalFormat dc = new DecimalFormat("###,###,###");

	
	public String getCreatedTimeAgo() {		
		
		LocalDateTime pastTime = LocalDateTime.parse(created, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		ZoneId zoneId = ZoneId.systemDefault();
		ZonedDateTime zdt = pastTime.atZone(zoneId);
      
		System.out.println(LocalDateTime.now());
		return Time.timeAgo(zdt.toLocalDateTime());
		
	}
	
	public String getFormattedPrice() {
		
		return dc.format(price);
	}
}
