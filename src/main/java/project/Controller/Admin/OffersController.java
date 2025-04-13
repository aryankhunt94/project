package project.Controller.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import project.entity.OffersEntity;
import project.repository.OfferRepository;

@Controller

public class OffersController {
	
	@Autowired
	OfferRepository repooffer;
	
	@GetMapping("addoffers")
	public String addoffers() {
	    return "AddOffers";
	}

	@PostMapping("saveoffers")
	public String saveoffers(OffersEntity entityoffers) {
		repooffer.save(entityoffers);
		return "AddOffers";
	}
	@GetMapping("listoffers")
	public String listOffers( Model model) {
		List<OffersEntity>offerlist = repooffer.findAll();
		model.addAttribute("offerlist",offerlist);
		return "ListOffers";
	}
	

}
