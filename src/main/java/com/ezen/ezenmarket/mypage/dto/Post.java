package com.ezen.ezenmarket.mypage.dto;

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
   
   
   public Post(Integer post_Id, Integer user_number) {
      this.post_Id = post_Id;
      this.user_number = user_number;
      
   }
   
   
   
}