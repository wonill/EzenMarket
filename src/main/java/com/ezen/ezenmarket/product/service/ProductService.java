package com.ezen.ezenmarket.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.dto.PostImage;

public interface ProductService {

	/* 카테고리별로 조회하기 */
	public List<Post> getCateList(Integer category_id);
	
	/* 페이징 처리 상품 조회 */
	public String paging(HttpServletRequest req,  int category_id);

	 /* 상품 상세페이지(상품정보 + 상품이미지정보 + 판매자정보 + 찜정보) */
	 public Post getDetails(Integer post_id);
	 
	  // 검색된 결과의 개수
	 public Integer getSearchCnt (String title); 

	 /* 판매자가 등록한 상품 개수 가져오기 */
	 public int cntProdBySeller(Integer user_number);
	
	 /* 판매자가 등록한 연관상품 목록 가져오기 */
	 public List<Post> getRelatedProd(Integer user_number, Integer post_id);
	
	 /* 찜 개수 가져오기 */
	 public int cntWishlist (Integer post_id);
	 
	/* 조회수 가져오기 */
	 public Integer plusView(Integer post_id);
	 
	 public List<PostImage> getPostImages(Integer post_id);
	 

	 
	 
		// 총 게시글 수를 가져옴
	 public int countProduct(String title); 
	
		// 페이징 처리 게시글 조회
	 public List<Post> getProductWithPaging(String title, PagingVO vo);
		
	 
	   /* 페이징 처리 상품 조회 */
	 public String pagingAllProd(HttpServletRequest req);
	 
}