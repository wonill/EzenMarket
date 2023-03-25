package com.ezen.ezenmarket.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.mypage.dto.EndDeal;
import com.ezen.ezenmarket.mypage.dto.Post;
import com.ezen.ezenmarket.mypage.dto.Profile;
import com.ezen.ezenmarket.mypage.dto.Review;

public interface MyPageXmlMapper {
   
   public List<Post> getPost(Integer user_num);
   
   public List<Post> getZzim(Integer user_num);
   
   public List<Review> getReviewList(Integer user_number);
   
   public void updatePost(Integer post_Id);
   
   public void deletePost(Integer post_Id);
   
   public void deleteZzim(Post p);   
   
   public Integer getReviewCount(Integer user_number);
   
   public Integer getPostCount(Integer user_number);
   
   public Profile getUserProfile(Integer user_number);
   
   public Integer nickCheck(String nickName);
   
   public void modifyNick(@Param("nickName")String nickName, @Param("user_number")Integer user_number);
   
   public void modifyIntro(@Param("userintro")String userintro, @Param("user_number")Integer user_number);
   
   public void modifyImg(@Param("img")String img, @Param("user_number")Integer user_number);
   
   public Integer getZzimCount (Integer user_number);   

   public List<Post> getmanagement(Integer user_number);
   
   public List<EndDeal> getBuying (Integer user_number);
   
   public Integer getBuyingCount (Integer user_number);
   
   public Integer zzimCountPerPost(Integer post_id);
   
   public Integer countEndDeal(Integer post_id);
   
   public List<Integer> getEndDealList(@Param("user_number")Integer user_number);
   
   public Review getOpponentReview(@Param("enddeal_id")Integer enddeal_id, @Param("user_number")Integer user_number);
   
}