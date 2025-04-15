package project.Controller;

import java.io.IOException;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import project.Service.MailService;
import project.entity.UserEntity;
import project.repository.UserRepository;


import jakarta.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;



@Controller
public class SessionController {
	@Autowired
	MailService serviceMail;
	
	@Autowired
	UserRepository repoUser;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	Cloudinary cloudinary;

	@GetMapping("signup")
	public String signup() {
		return "Signup";
	}
	@GetMapping("login")
	public String login(String email,String password) {
		return "Login";
	}
	
	
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity,MultipartFile profilePic,String password,String confirmPassword,RedirectAttributes redirect) {
		
	
		    System.out.println("Profile Pic Name: " + profilePic.getOriginalFilename());
		

		try {
		Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
		System.out.println(result);
		System.out.println(result.get("url"));
		
		userEntity.setProfilePicPath(result.get("url").toString());
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(password.equals(confirmPassword)) {			
			String encPassword = encoder.encode(userEntity.getPassword());
			userEntity.setPassword(encPassword);
			// memory
			// bcrypt singleton -> single object -> autowired
			
			userEntity.setRole("USER");
			repoUser.save(userEntity);
			// send mail
			serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
			return "Login";
		}
		else {
			redirect.addFlashAttribute("error", "not same as password");
			return "redirect:/signup";
		}
	}

	@PostMapping("sendotp")
	public String sendOtp(String email, Model model) {
		// email valid
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if (op.isEmpty()) {
			// email invalid
			model.addAttribute("error", "Email not found");
			return "ForgetPassword";
		} else {
			
			String otp = "";
			otp = (int) (Math.random() * 1000000) + "";// 0.25875621458541

			UserEntity user = op.get();
			user.setOtp(otp);
		
			repoUser.save(user);// update otp for user
			serviceMail.sendOtpForForgetPassword(email, user.getFirstName(), otp);
			return "ChangePassword";

		}
	}
	@PostMapping("authenticate")
	public String authenticate(String email,String password,Model model,HttpSession session) {
		System.out.println(email);
		System.out.println(password);
		Optional<UserEntity> op=repoUser.findByEmail(email);
		
		if (op.isPresent()) {
			UserEntity dbUser = op.get();
			boolean ans = encoder.matches(password, dbUser.getPassword());
			if (ans==true) {
				
				session.setAttribute("users", dbUser);
				if (dbUser.getRole().equals("ADMIN")) {
					
					return "AdminDashboard";
					
				
				}else if (dbUser.getRole().equals("USER")) {
					return "Home";
					
				}else {
					model.addAttribute("error","please contact to admin");
					return "Login";	
					
				}
				
			}
			
		}
		model.addAttribute("error","invalid email or password");
		return "Login";
	}
	
	/*
	 * @PostMapping("authenticate") public String authenticate(String email, String
	 * password, Model model, HttpSession session){
	 * 
	 * System.out.println(email); System.out.println(password);
	 * 
	 * Optional<UserEntity> op = repoUser.findByEmail(email);
	 * 
	 * if(op.isPresent()) { UserEntity dbUsers = op.get(); boolean ans =
	 * encoder.matches(password, dbUsers.getPassword());
	 * 
	 * if(ans) { session.setAttribute("user", dbUsers);
	 * 
	 * if ("ADMIN".equals(dbUsers.getRole())) { return "redirect:/admindashboard";
	 * 
	 * } else if ("USER".equals(dbUsers.getRole())) { return "redirect:/home"; }
	 * else { model.addAttribute("error", "Please contact the admin."); return
	 * "Login"; } } }
	 * 
	 * model.addAttribute("error", "Invalid email or password."); return "Login"; }
	 */
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	
	@PostMapping("updatepassword")
	public String updatePassword(String email,String password,String otp,Model model) {
		
		Optional<UserEntity> op = repoUser.findByEmail(email);
		if(op.isEmpty()) {
			model.addAttribute("error","invalide data");
			return "ChangePassword";
			
			
			
		}else {
			
			UserEntity user = op.get();
			
			if (user.getOtp().equals(otp)) {
				
				String emcpwd = encoder.encode(password);
				user.setPassword(emcpwd);
				user.setOtp("");
				repoUser.save(user);
				
			}else {
				model.addAttribute("error","invalide data");
				
			return "ChangePassword";
			}
			
		}
		model.addAttribute("message","password successfully updated");
		return "Login";
		
	}
	@GetMapping("forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	@GetMapping("changepassword")
	public String changePassword() {
		return "ChangePassword";
	}
	
	
@GetMapping("deleteuser")
public String deleteuser(Integer userId) {
	repoUser.deleteById(userId);
	return "redirect:/listuser";
	
}
@GetMapping("viewuser")
public String viewuser(Integer userId,Model model) {
	Optional<UserEntity> op = repoUser.findById(userId);
	if (op.isEmpty()) {
		
	}else {
		UserEntity user = op.get();
		model.addAttribute("user",user);
		
	}
	return "ViewUser";
	
}

}

















