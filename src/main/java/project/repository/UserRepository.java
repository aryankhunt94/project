package project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import project.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {

	
	Optional<UserEntity> findByEmail(String email);
	Optional<UserEntity>findByEmailAndPassword(String email,String password);
	
	List<UserEntity> findByRole(String role);
}
