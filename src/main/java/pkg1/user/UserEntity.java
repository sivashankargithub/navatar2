package pkg1.user;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="navatar2")
public class UserEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String name,country_code,gmail,password,location,language;
	private long phone;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCountry_code() {
		return country_code;
	}
	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public UserEntity(int id, String name, String country_code, String gmail, String password, long phone, String location, String language) {
		super();
		this.id=id;
		this.name = name;
		this.country_code = country_code;
		this.gmail = gmail;
		this.password = password;
		this.phone = phone;
		this.location = location;
		this.language = language;
	}
	public UserEntity(int id, String name, String country_code, String gmail, long phone, String location, String language) {
		super();
		this.id=id;
		this.name = name;
		this.country_code = country_code;
		this.gmail = gmail;
		this.phone = phone;
		this.location = location;
		this.language = language;
	}
	public UserEntity() {
		super();
	}

}
