package project.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import project.entity.VehicleEntity;
import project.repository.VehicleRepository;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class VehicleController {
	
	@Autowired
	VehicleRepository repoVehicle;
	@GetMapping("newvehicle")
	public String newvehicle() {
		return "NewVehicle";
	}
	@PostMapping("savevehicle")
	public String savevehicle(VehicleEntity vehicleEntity) {
	repoVehicle.save(vehicleEntity);
		return "NewVehicle";
	}
	@GetMapping("listvehicle")
	public String listvehicle(Model model ){
	List<VehicleEntity>vehicle=repoVehicle.findAll();
	model.addAttribute("vehicle",vehicle);	
	return "ListVehicle";
	}
	
	
}
