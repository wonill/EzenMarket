package com.ezen.ezenmarket.mypage.service;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.mypage.dto.Post;
import com.ezen.ezenmarket.mypage.dto.Profile;
import com.ezen.ezenmarket.mypage.dto.Review;
import com.ezen.ezenmarket.mypage.mapper.MyPageXmlMapper;

@Service
public class MyPageServiceImpl implements MyPageService{
   
   @Autowired
   MyPageXmlMapper mapper;
   
   @Override
   public String getSaleList(HttpServletRequest req) {
      Cookie[] cookies = req.getCookies();
      int user_num = 0;
      
      if(cookies != null) {
         for(Cookie cookie : cookies) {
            if(cookie.getName().equals("user_num")) {
               user_num = Integer.parseInt(cookie.getValue());
            }
         }
      }
      
      int user_number = Integer.parseInt(req.getParameter("user_number"));
      
      if (user_number == user_num) {
         req.setAttribute("verified", "yes");
      } else {
         req.setAttribute("verified", "no");
      }

      List<Post> post = mapper.getPost(user_number);
      
      Profile p = mapper.getUserProfile(user_number);
      p.setReviewCount(mapper.getReviewCount(user_number));
      p.setPostCount(mapper.getPostCount(user_number));
      
      String pageStr = req.getParameter("page");
      
      int page;
      
      if (pageStr == null) {
         page = 1;
      } else {
         page = Integer.parseInt(pageStr);
      }
      
      int page_size = 9;
      int board_size = post.size();
      int start_index = (page - 1) * page_size;
      int end_index = page * page_size;
      end_index = end_index > board_size ? board_size : end_index;
      
      int max_page = board_size % page_size == 0 ?
            board_size / page_size : board_size / page_size + 1;
      
      int pagination_start = (page / page_size) * page_size + 1;
      int pagination_end = (page / page_size + 1) * page_size;
      pagination_end = pagination_end > max_page ? max_page : pagination_end;
      
      req.setAttribute("user_number", req.getParameter("user_number"));
      req.setAttribute("profile", p);
      req.setAttribute("post", post.subList(start_index, end_index));
      req.setAttribute("pagination_start", pagination_start);
      req.setAttribute("pagination_end", pagination_end);
      
      return null;
   }
   
   @Override
   public String getZzimList(HttpServletRequest req) {
      Cookie[] cookies = req.getCookies();
      Integer user_num = null;
      
      if(cookies != null) {
         for(Cookie cookie : cookies) {
            if(cookie.getName().equals("user_num")) {
               user_num = Integer.parseInt(cookie.getValue());
            }
         }
      }
      
      int user_number = Integer.parseInt(req.getParameter("user_number"));
      
      if (user_number == user_num) {
         req.setAttribute("verified", "yes");
      } else {
         req.setAttribute("verified", "no");
      }
      
      List<Post> zzim = mapper.getZzim(user_number);
      
      Profile p = mapper.getUserProfile(user_number);
      p.setReviewCount(mapper.getReviewCount(user_number));
      p.setPostCount(mapper.getPostCount(user_number));
      
      String pageStr = req.getParameter("page");
      
      int page;
      
      if (pageStr == null) {
         page = 1;
      } else {
         page = Integer.parseInt(pageStr);
      }
      
      int page_size = 9;
      int board_size = zzim.size();
      int start_index = (page - 1) * page_size;
      int end_index = page * page_size;
      end_index = end_index > board_size ? board_size : end_index;
      
      int max_page = board_size % page_size == 0 ?
            board_size / page_size : board_size / page_size + 1;
      
      int pagination_start = (page / page_size) * page_size + 1;
      int pagination_end = (page / page_size + 1) * page_size;
      pagination_end = pagination_end > max_page ? max_page : pagination_end;
      
      req.setAttribute("user_number", req.getParameter("user_number"));
      req.setAttribute("profile", p);
      req.setAttribute("zzim", zzim.subList(start_index, end_index));
      req.setAttribute("pagination_start", pagination_start);
      req.setAttribute("pagination_end", pagination_end);
      
      return null;
   }
   
   @Override
   public String getReviewList(HttpServletRequest req) {
      Cookie[] cookies = req.getCookies();
      Integer user_num = null;
      
      if(cookies != null) {
         for(Cookie cookie : cookies) {
            if(cookie.getName().equals("user_num")) {
               user_num = Integer.parseInt(cookie.getValue());
            }
         }
      }
      
      int user_number = Integer.parseInt(req.getParameter("user_number"));
      
      if (user_number == user_num) {
         req.setAttribute("verified", "yes");
      } else {
         req.setAttribute("verified", "no");
      }
      
      List<Review> review = mapper.getReviewList(user_number);
      
      Profile p = mapper.getUserProfile(user_number);
      p.setReviewCount(mapper.getReviewCount(user_number));
      p.setPostCount(mapper.getPostCount(user_number));
      
      String pageStr = req.getParameter("page");
      
      int page;
      
      if (pageStr == null) {
         page = 1;
      } else {
         page = Integer.parseInt(pageStr);
      }
      
      int page_size = 9;
      int board_size = review.size();
      int start_index = (page - 1) * page_size;
      int end_index = page * page_size;
      end_index = end_index > board_size ? board_size : end_index;
      
      int max_page = board_size % page_size == 0 ?
            board_size / page_size : board_size / page_size + 1;
      
      int pagination_start = (page / page_size) * page_size + 1;
      int pagination_end = (page / page_size + 1) * page_size;
      pagination_end = pagination_end > max_page ? max_page : pagination_end;
      
      req.setAttribute("user_number", req.getParameter("user_number"));
      req.setAttribute("profile", p);
      req.setAttribute("review", review.subList(start_index, end_index));
      req.setAttribute("pagination_start", pagination_start);
      req.setAttribute("pagination_end", pagination_end);
      
      return null;
   }
   
   @Override
   public void updatePost(Integer post_Id) {
      mapper.updatePost(post_Id);
   }
   
   @Override
   public void deletePost(Integer post_Id) {
      
      mapper.deletePost(post_Id);
   }
   

   @Override
      public void deleteZzim(Post p) {
         mapper.deleteZzim(p);
   }
   
   @Override
   public int nickCheck(String nickName) {
      int cnt = mapper.nickCheck(nickName);
      return cnt;
   }
   
   @Override
   public void modifyNick(String nickName) {
      mapper.modifyNick(nickName);
   }
   
   @Override
   public void modifyIntro(String userintro) {
      mapper.modifyIntro(userintro);
   }
   
   @Override
   public void getmanagement(HttpServletRequest req) {
      Cookie[] cookies = req.getCookies();
      int user_num = 0;
      
      if(cookies != null) {
         for(Cookie cookie : cookies) {
            if(cookie.getName().equals("user_num")) {
               user_num = Integer.parseInt(cookie.getValue());
            }
         }
      }
      
      int user_number = Integer.parseInt(req.getParameter("user_number"));
      
      if (user_number == user_num) {
         req.setAttribute("verified", "yes");
      } else {
         req.setAttribute("verified", "no");
      }

      List<Post> mngs = mapper.getmanagement(user_number);
      
      for(Post mng : mngs) {
    	  Integer post_id = mng.getPost_Id();
    	  mng.setZzimCount(mapper.zzimCountPerPost(post_id));
    	  mng.setSales_status(mapper.countEndDeal(post_id));
      }
      
      
      String pageStr = req.getParameter("page");
      
      // session 객체 생성
      HttpSession session = req.getSession();
      
      //세션에서 가져온 유저번호를 파라미터 값으로 실어준다
      req.setAttribute("user_number", session.getAttribute("user_number"));
      
      int page;
      
      if (pageStr == null) {
         page = 1;
      } else {
         page = Integer.parseInt(pageStr);
      }
      
      int page_size = 9;
      int board_size = mngs.size();
      int start_index = (page - 1) * page_size;
      int end_index = page * page_size;
      end_index = end_index > board_size ? board_size : end_index;
      
      int max_page = board_size % page_size == 0 ?
            board_size / page_size : board_size / page_size + 1;
      
      int pagination_start = (page / page_size) * page_size + 1;
      int pagination_end = (page / page_size + 1) * page_size;
      pagination_end = pagination_end > max_page ? max_page : pagination_end;
      
      req.setAttribute("user_number", req.getParameter("user_number"));
      req.setAttribute("managements", mngs.subList(start_index, end_index));
      req.setAttribute("pagination_start", pagination_start);
      req.setAttribute("pagination_end", pagination_end);
      
    
   }
}