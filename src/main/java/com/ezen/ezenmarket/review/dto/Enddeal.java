package com.ezen.ezenmarket.review.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Enddeal {
	
	Integer enddeal_id;
	Integer seller_user_number;
	Integer buyer_user_number;
	Integer post_id;
}
