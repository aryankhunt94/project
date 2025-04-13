package project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import project.entity.CityEntity;
import project.repository.CityRepository;

@Controller
public class CityController {
	@Autowired
	CityRepository repoCity;

	@GetMapping("newcity")
	public String newCity() {
		return "City";
	}
	@PostMapping("savecity")
	public String saveCity(CityEntity entityCity) {
		repoCity.save(entityCity);
		return "City";
	}
}
