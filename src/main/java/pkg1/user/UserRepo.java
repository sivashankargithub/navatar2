package pkg1.user;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepo extends JpaRepository<UserEntity, Integer> {
	@Query(value="select * from navatar2 where gmail like :user and password like :pass",nativeQuery = true)
	public UserEntity login1(@Param(value = "user") String user, @Param(value = "pass") String pass);

}
