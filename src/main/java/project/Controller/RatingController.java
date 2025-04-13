package project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import project.entity.RatingEntity;
import project.repository.RatingRepository;


@Controller
public class RatingController {
	
	@Autowired
	RatingRepository reporating;
		@GetMapping("rating")
		public String rating() {
			return "Rating";
}
		@PostMapping("saverating")
		public String saveRating(RatingEntity rating) {
	
			reporating.save(rating);
			return "Home";
}
		@GetMapping("listrating")
		public String listrating(Model model) {
			
			List<RatingEntity> rating = reporating.findAll();
			model.addAttribute("Rating",rating);
			return "ListRating";
		}

}
