package com.ezen.ezenmarket.mypage.dto;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

import com.ezen.ezenmarket.product.dto.Time;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Post {
   private Integer post_Id;
   private String title;
   private Integer price;
   private String image_url;
   private Integer user_number;
   
   private String updated;
   
   private Integer sales_status;
   private Integer zzimCount;
   
   
   public Post(Integer post_Id, Integer user_number) {
      this.post_Id = post_Id;
      this.user_number = user_number;
      
   }
   
   public String getCreatedTimeAgo() {		
		
		LocalDateTime pastTime = LocalDateTime.parse(updated, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		ZoneId zoneId = ZoneId.systemDefault();
		ZonedDateTime zdt = pastTime.atZone(zoneId);
     
		System.out.println(LocalDateTime.now());
		return Time.timeAgo(zdt.toLocalDateTime());
		
	}
   
   
   
}