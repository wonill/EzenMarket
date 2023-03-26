package com.ezen.ezenmarket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;

import lombok.extern.log4j.Log4j2;

/**
 * Handles requests for the application home page.
 */
@Log4j2
@Controller
public class MainController {
	
	
	
	@Autowired
	ProductMapper productMapper;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<Post> posts = productMapper.selectAllProductsOrderByView();
		if(posts != null && posts.size() >= 60) {
			model.addAttribute("posts", posts.subList(0, 60));			
		}
		return "main";
	}
	
	
	
	
}
