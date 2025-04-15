package project.Controller.Admin;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import project.entity.UserEntity;
import project.repository.UserRepository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class AdminController {
	
	@Autowired
	UserRepository repoUser;
	
	@Autowired
	Cloudinary cloudinary;

	@GetMapping("admindashboard")
	public String adminDashboard(HttpSession session,Model model) {
		
		Long totalUsersLong = repoUser.count();
		Integer totaluser = repoUser.findByRole("USER").size();
		Integer totaladmin = repoUser.findByRole("ADMIN").size();
		model.addAttribute("totaluser",totaluser);
		
		
		return "AdminDashboard";
	}
	/*
	 * @GetMapping("admindashboard") public String admindashboard(HttpSession
	 * session) { UserEntity user = (UserEntity) session.getAttribute("user"); if
	 * (user == null || !"ADMIN".equals(user.getRole())) { return "redirect:/home";
	 * } return "AdminDashboard"; }
	 */
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	@GetMapping("/")
	public String redirectTohome() {
		return "redirect:/home";
	}
	
	
	@GetMapping("listusers")
	public String listusers(UserEntity entity, Model model) {
		
		List<UserEntity> userList = repoUser.findAll();
		model.addAttribute("Users",userList);
	
		return "ListUsers";
	}
	
	@GetMapping("adduser")
	public String addUser() {
		return "AddUser";
	}
	@GetMapping("edituser")
	public String editUser(Integer userId,Model model) {
		Optional<UserEntity> op = repoUser.findById(userId);
		if (op.isEmpty()) {
			return "redirect:/listuser";
			
		}else {
			model.addAttribute("user",op.get());
		}
		return "EditUser";
	}
	@PostMapping("updateuser")
	public String updateUser(UserEntity entity,MultipartFile profilePic) {
		Optional<UserEntity> op = repoUser.findById(entity.getUserId());
		if (op.isPresent()) {
		UserEntity dbUser = op.get();
		dbUser.setFirstName(entity.getFirstName());
		dbUser.setLastName(entity.getLastName());	
		dbUser.setGender(entity.getGender());
		dbUser.setEmail(entity.getEmail());
		dbUser.setContactNumber(entity.getContactNumber());
		dbUser.setBirthDate(entity.getBirthDate());
		dbUser.setProfilePicPath(entity.getProfilePicPath());
//		dbUser.setPassword(dbUser.getPassword());
		dbUser.setRole(entity.getRole());

		

		try {
			Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
		System.out.println(result);
		System.out.println(result.get("url"));
		
		dbUser.setProfilePicPath(result.get("url").toString());
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		repoUser.save(dbUser);
		}
		
		
		return "redirect:/listusers";
	}
	
	@GetMapping("fastfood")
	public String fastFood() {
		return "FastFood";
	}
	
	@GetMapping("vegrestraurent")
	public String vegRestraurent() {
		return "VegRestraurent";
	}
	@GetMapping("nonvegrestraurent")
	public String nonvegRestraurent() {
		return "NonVegRestraurent";
	}
	@GetMapping("mainoffers")
	public String mainoffers() {
		return "MainOffers";
	}
	@GetMapping("menu")
	public String menu() {
		return "menu";
	}
}
