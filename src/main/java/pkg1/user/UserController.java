package pkg1.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
	@Autowired
	UserRepo ur;
	
	@PostMapping("/user/register")
	public String register(@RequestBody UserEntity ue){
		ur.save(ue);
		return "User added Successfully";
	}
	
	@GetMapping("/user/showallusers")
	public List<UserEntity> showUsers(){
		return ur.findAll();
	}
	
	@GetMapping("/user/login/{username}/{password}")
	public UserEntity login(@PathVariable String username, @PathVariable String password){
		UserEntity ue1=ur.login1(username, password);
		UserEntity ue2= new UserEntity(ue1.getId(),ue1.getName(),ue1.getCountry_code(),ue1.getGmail(),"****",ue1.getPhone(),ue1.getLocation(),ue1.getLanguage());
		return ue2;
	}
}
