package project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import project.entity.StateEntity;
import project.repository.StateRepository;

@Controller
public class StateController {
	
	@Autowired
	StateRepository repoState;
	
	@GetMapping("newstate")
	public String newState() {
		return "NewState";
}

@PostMapping("savestate")
public String saveState(StateEntity entityState) {
    repoState.save(entityState);
    return "NewState";
}

}
