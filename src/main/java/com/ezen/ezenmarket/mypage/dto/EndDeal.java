package com.ezen.ezenmarket.mypage.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class EndDeal {

   private Integer post_id;
   private String title;
   private Integer price;
   private String image_url;
   private Integer user_number;
   private Integer buyer_user_number;   
   private Integer enddeal_id;
   
}