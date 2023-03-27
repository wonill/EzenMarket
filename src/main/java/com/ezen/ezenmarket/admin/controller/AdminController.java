package com.ezen.ezenmarket.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.ezenmarket.admin.dto.ReportDTO;
import com.ezen.ezenmarket.admin.dto.UserListDTO;
import com.ezen.ezenmarket.admin.mapper.AdminMapper;
import com.ezen.ezenmarket.admin.service.AdminMainPageService;
import com.ezen.ezenmarket.admin.service.AdminPostlistService;
import com.ezen.ezenmarket.admin.service.VisitService;

@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	private AdminMainPageService adminMainPageService;
	
	@Autowired
	private AdminPostlistService adminPostlistService;
	
	@Autowired
	private VisitService visitService;
	
	
	@GetMapping("/error")
	public String error() {
		return "admin/error";
	}

	@GetMapping(value={"/userlist"})
	public String userlist(Model model) {
		model.addAttribute("userlist", adminMapper.getUser());
		model.addAttribute("getUserCount", adminMapper.getUserCount());
		model.addAttribute("getBannedUserCount", adminMapper.getBannedUserCount());
		model.addAttribute("todayVisitor", adminMainPageService.getTodayVisitor());
		
		List<Map<String, Object>> address = adminMapper.getAddress();
		
		List<String> userAddresses = new ArrayList<String>();
		for (Map<String, Object> map : address) {
		  String userAddress = (String) map.get("USER_ADDRESS");
		  String[] addressParts = userAddress.split("-");
		  String valueAtEnd = addressParts[addressParts.length - 1];
		  userAddresses.add(valueAtEnd);
		}
		
		List<Integer> countValues = new ArrayList<>();
		for (Map<String, Object> map : address) {
		    String countStr = map.get("COUNT").toString();
		    int countValue = Integer.parseInt(countStr);
		    countValues.add(countValue);
		}
		
		
		System.out.println(countValues);
		System.out.println(userAddresses);
		
		model.addAttribute("userAddresses", userAddresses);
		model.addAttribute("countValues", countValues);
		
		return "admin/userlist";
	}
	
	@GetMapping(value={"/postlist"})
	public String postlist(Model model) {
		
		int todayPostCount = adminPostlistService.getTodayPostCount();
		int thisMonthPostCount = adminMainPageService.getPostCount();
		int lastMonthPostCount = adminPostlistService.getLastMonthPostCount();
		int thisMotnthEndDealCount = adminPostlistService.getThisMonthEndDealPostCount();
		double percentage = ((double) adminPostlistService.getLastMonthPostCount() / adminMainPageService.getPostCount()) * 100;
		double roundedPercentage = Math.round(percentage * 10) / 10.0;
		
		model.addAttribute("todayPostCount", todayPostCount);
		model.addAttribute("thisMonthPostCount", thisMonthPostCount);
		model.addAttribute("lastMonthPostCount", lastMonthPostCount);
		model.addAttribute("thisMotnthEndDealCount", thisMotnthEndDealCount);		
		model.addAttribute("postlist", adminMapper.getPost());
		model.addAttribute("endDeal", adminMapper.getEndDeal());
		model.addAttribute("roundedPercentage", roundedPercentage);

		return "admin/postlist";
	}
	
	
	@GetMapping(value={"/userlist/ban"})
	public String banUser(UserListDTO userlist) {
		adminMapper.banUser(userlist);
		
		return "redirect:/admin/userlist";
	}
	
	@GetMapping(value={"/userlist/unban"})
	public String unbanUser(UserListDTO userlist) {
		adminMapper.unbanUser(userlist);
		
		return "redirect:/admin/userlist";
	}
	
	@GetMapping(value={"/reportlist/modify"})
	public String modifyReport(ReportDTO report) {
		adminMapper.updateReport(report);
		
		return "redirect:/admin/reportlist";
	}
	
	@GetMapping("/reportlist/deletePost")
	public String deletePost(Integer post_id) {
		adminMapper.deletePost(post_id);
		return "redirect:/admin/reportlist";
	
	}
	
	@GetMapping("/postlist/deletePost")
	public String deletePost2(Integer post_id) {
		adminMapper.deletePost(post_id);
		return "redirect:/admin/postlist";
	
	}
	
	@GetMapping("/reportlist/deleteReview")
	public String deleteReview(Integer review_id) {
		adminMapper.deleteReview(review_id);
		return "redirect:/admin/reportlist";
	
	}
	
	@GetMapping(value={"/reportlist"})
	public String reportlist(Model model) {
		model.addAttribute("report", adminMapper.getReport());
		
		return "admin/reportlist";
	}

	@GetMapping(value = { "/mainpage" })
	public String mainpage(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();

		if (session.isNew()) {
			visitService.increaseVisitCount();
		}

		int reportCount = adminMainPageService.getReportCount();
		int postCount = adminMainPageService.getPostCount();
		int categoryFirst = adminMainPageService.getCategoryFirst();
		int categorySecond = adminMainPageService.getCategorySecond();
		int categoryThird = adminMainPageService.getCategoryThird();
		int todayVisitor = adminMainPageService.getTodayVisitor();
		int thisMonthVisitor = adminMainPageService.getThisMonthVisitor();
		int[] thisWeekVisitor = adminMainPageService.getWeekdayVisitorCount();
		
		model.addAttribute("thisWeekVisitor", thisWeekVisitor);
	
		model.addAttribute("postCount", postCount);
		model.addAttribute("reportCount", reportCount);
		model.addAttribute("categoryFirst", categoryFirst);
		model.addAttribute("categorySecond", categorySecond);
		model.addAttribute("categoryThird", categoryThird);
		model.addAttribute("todayVisitor", todayVisitor);
		model.addAttribute("thisMonthVisitor", thisMonthVisitor);
		
		
		
		return "admin/mainpage";
	}

	@GetMapping(value = { "/login" })
	public String login() {

		return "admin/login";
	}
	
	@GetMapping(value={"/modifyBannerPage"})
	public String modifyBannerPage() {
		
		return "admin/modifyBannerPage";
	}
	
	@GetMapping("/upload")
	public void form() {}
	
	@PostMapping("/upload_banner1")
	public String uploadBanner1(@RequestParam("file") MultipartFile file, Model model) {
		
		String fileRealName = file.getOriginalFilename();
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:/Users/admin/git/EzenMarket/src/main/webapp/resources/img";
		
		UUID uuid = UUID.randomUUID();
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		String fileName = uniqueName + fileExtension;
		System.out.println(fileName);
		
		File saveFile = new File(uploadFolder+"\\banner1.jpg");
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String filePath = uploadFolder + "\\" + fileName;
	    model.addAttribute("fileName", filePath);
	    model.addAttribute("imageSrc1", "file:///" + filePath.replace("\\", "/"));
		
		return "admin/modifyBannerPage";
	}
	
	@PostMapping("/upload_banner2")
	public String uploadBanner2(@RequestParam("file") MultipartFile file, Model model) {
		
		String fileRealName = file.getOriginalFilename();
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:/Users/admin/git/EzenMarket/src/main/webapp/resources/img";
		
		UUID uuid = UUID.randomUUID();
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		String fileName = uniqueName + fileExtension;
		System.out.println(fileName);
		
		File saveFile = new File(uploadFolder+"\\banner2.jpg");
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String filePath = uploadFolder + "\\" + fileName;
	    model.addAttribute("fileName", filePath);
	    model.addAttribute("imageSrc2", "file:///" + filePath.replace("\\", "/"));
		
		return "admin/modifyBannerPage";
	}
	
	@PostMapping("/upload_banner3")
	public String uploadBanner3(@RequestParam("file") MultipartFile file, Model model) {
		
		String fileRealName = file.getOriginalFilename();
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:/Users/admin/git/EzenMarket/src/main/webapp/resources/img";
		
		UUID uuid = UUID.randomUUID();
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		String fileName = uniqueName + fileExtension;
		System.out.println(fileName);
		
		File saveFile = new File(uploadFolder+"\\banner3.jpg");
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String filePath = uploadFolder + "\\" + fileName;
	    model.addAttribute("fileName", filePath);
	    model.addAttribute("imageSrc3", "file:///" + filePath.replace("\\", "/"));
		
		return "admin/modifyBannerPage";
	}
	
	@PostMapping("/upload_banner4")
	public String uploadBanner4(@RequestParam("file") MultipartFile file, Model model) {
		
		String fileRealName = file.getOriginalFilename();
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:/Users/admin/git/EzenMarket/src/main/webapp/resources/img";
		
		UUID uuid = UUID.randomUUID();
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		String fileName = uniqueName + fileExtension;
		System.out.println(fileName);
		
		File saveFile = new File(uploadFolder+"\\banner4.jpg");
		try {
			file.transferTo(saveFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String filePath = uploadFolder + "\\" + fileName;
	    model.addAttribute("fileName", filePath);
	    model.addAttribute("imageSrc4", "file:///" + filePath.replace("\\", "/"));
		
		return "admin/modifyBannerPage";
	}
	
}