package project;

import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class ProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectApplication.class, args);
	}
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder(5);
	}
	@Bean
	Cloudinary cloudinary() {
		Map<String, String> config = ObjectUtils.asMap("cloud_name", "dfdfm6que", "api_key", "677822594744946",
				"api_secret", "hQmU_F0LKK7DW--l4yUqJZyvaSE");
		return new Cloudinary(config);
	}

}
