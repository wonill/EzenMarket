package com.ezen.ezenmarket.product.dto;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Locale;

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
public class Post2 extends PostImage {
	
	private Integer post_Id;
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

	private static SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
	
	public Post2(Integer post_Id, Integer user_number, String post_address, String title, String post_content,
			Integer category_id, Integer price) {
		this.post_Id = post_Id;
		this.user_number = user_number;
		this.post_address = post_address;
		this.title = title;
		this.post_content = post_content;
		this.category_id = category_id;
		this.price = price;
	}
	
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
	
		   
			   public String getUpdateDateTime() {
				 
		 	 
			       return dayFormat.format(updated);
			   }
		
}