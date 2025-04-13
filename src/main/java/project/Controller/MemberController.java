package project.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.persistence.Entity;
import project.entity.MemberEntity;
import project.repository.MemberRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller

public class MemberController {
	
	@Autowired 
	MemberRepository repoMember;
	
	@GetMapping("newmember")
	public String newmember() {
		return "NewMember";
	}
	@PostMapping("savemember")
	public String savemember(MemberEntity entity) {
		repoMember.save(entity);
		//System.out.println(entity.getMemberName());
		return "NewMember";
	}
	@GetMapping("listmembers")
	public String listmembers(Model model) {
		List<MemberEntity> memberlist = repoMember.findAll();
		model.addAttribute("memberlist",memberlist);
		return "ListMember";
	}
	@GetMapping("viewmember")
	public String viewmember(Model model,Integer memberId) {
		Optional<MemberEntity> op= repoMember.findById(memberId);
		if(op.isEmpty()){
			
		}else {
			MemberEntity member = op.get();
			model.addAttribute("member",member);
		}
		return"ViewMember";
	}
	
	@GetMapping("deletemember")
	public String deletemember(Integer memberId) {
		repoMember.deleteById(memberId);
		return"redirect:/listmembers";
	}
	
	@GetMapping("editmember")
    public String editmember(int memberId, Model model) {
        Optional<MemberEntity> op = repoMember.findById(memberId);
        if (op.isPresent()) {
            model.addAttribute("member", op.get());
            return "EditMember"; // Navigate to edit page
        }
        return "redirect:/listmembers";
    }

    @PostMapping("updatemember")
    public String updatemember(MemberEntity entity) {
        repoMember.save(entity);
        return "redirect:/listmembers"; // Redirect to list after update
    }
    @GetMapping("contactUs")
    public String contactUs() {
        return "ContactUs";
    }
    

}
