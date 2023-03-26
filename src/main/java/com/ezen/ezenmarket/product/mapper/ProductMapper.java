package com.ezen.ezenmarket.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.product.dto.PagingVO;
import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.dto.PostImage;


public interface ProductMapper {
   
   public List<Post> selectAllProducts();
   
   public List<Post> selectAllProductsOrderByView();
   
   public Post selectProduct(String id);
   
   public void insertProduct(Post post); 

   
   
   
   
   public List<Post> deduplicatedProd();
   
   /* 카테고리별로 조회 */
    public List<Post> getCateList(Integer category_id);

    /* 상품 상세페이지(상품정보 + 상품이미지정보 + 판매자정보) */
    public Post getDetails(Integer post_id);
    
    /* 판매자가 등록한 상품 개수 가져오기 */
    public int cntProdBySeller(Integer user_number);
    
   /* 판매자가 등록한 연관상품 목록 가져오기 */
    public List<Post> getRelatedProd(@Param("user_number") Integer user_number, @Param("post_id") Integer post_id);

    /* 찜 개수 가져오기 */
    public int cntWishlist (Integer post_id);
        
   /* 조회수 가져오기 */
    public Integer plusView(Integer post_id);
    
    /* 특정 포스트에 속한 포스트 이미지들 모두 가져오기 */
    public List<PostImage> getPostImages(Integer post_id);
    
    // 찜 여부 확인하기
    public Integer countNumOfZzim(@Param("user_number")Integer user_number, @Param("post_id")Integer post_id);
    
    // 찜 등록
    public void insertZzim(@Param("user_number")Integer user_number, @Param("post_id")Integer Post_id);
    
    // 찜 삭제
    public void deleteZzim(@Param("user_number")Integer user_number, @Param("post_id")Integer Post_id);
    
    /* 상세페이지 판매자 프로필 사진 */
    public Post getProfileImg(@Param("user_number")Integer user_number, @Param("post_id")Integer Post_id);
   
    
    
    
    public List<Post> searchProduct(String title);

	// 총 게시글 수를 가져옴
	public int countProduct(String title); 
	
	// 검색된 결과의 개수
	public Integer getSearchCnt (String title);

	// 페이징 처리 상품 조회
	public List<Post> getProductWithPaging(@Param("title") String title, @Param("vo")PagingVO vo);
	
	// 가격 높은순으로 정렬
	public List<Post> getProductHighPrice(@Param("title") String title, @Param("vo")PagingVO vo);
	
	// 가격 낮은순으로 정렬
	public List<Post> getProductLowPrice(@Param("title") String title, @Param("vo")PagingVO vo);
	
	/* 전체 상품 개수 */
	public int countAllProduct();
    
}