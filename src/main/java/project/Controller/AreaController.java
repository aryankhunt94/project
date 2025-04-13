package project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import project.entity.AreaEntity;
import project.repository.AreaRepository;

@Controller
public class AreaController {

	@Autowired
	AreaRepository repoState;
	
	@GetMapping("newarea")
	public String newarea() {
		return "Area";
	}
	@PostMapping("savearea")
	public String savearea(AreaEntity entityArea) {
		repoState.save(entityArea);
		return "Area";
	}
}
