package com.ezen.ezenmarket.mypage.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.ezen.ezenmarket.mypage.dto.Post;

public interface MyPageService {
   
   public String getSaleList(HttpServletRequest req);
   
   public String getZzimList(HttpServletRequest req);
   
   public String getReviewList(HttpServletRequest req);
   
   public void updatePost(Integer post_Id);
   
   public void deletePost(Integer post_Id);   
   
   public void deleteZzim(Post p);
   
   public int nickCheck(String nickName);
   
   public void modifyNick(String nickName);
   
   public void modifyIntro(String userintro);
   
   public void modifyImg(MultipartFile file);
   
   public void getmanagement(HttpServletRequest req);
   
   public String getBuyList(HttpServletRequest req);

}