package project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import project.entity.MemberEntity;
import project.entity.UserEntity;
import project.repository.MemberRepository;
import project.repository.UserRepository;

@Controller
public class AdminReportController {
	
	@Autowired
	UserRepository repouser;
	
	@Autowired
	MemberRepository repomember;
	
	@GetMapping("adminactiveuser")
	public String adminactiveuser(Model model){
		
		List<UserEntity> user = repouser.findAll();
		
		model.addAttribute("User",user);
		
		return "AdminActiveUser";
	}
	@GetMapping("adminactivemember")
	public String adminactivemember(Model model) {
		
		List<MemberEntity> member =repomember.findAll();
		
		model.addAttribute("memberlist",member);
		return "AdminActiveMember";
	}
	

}
