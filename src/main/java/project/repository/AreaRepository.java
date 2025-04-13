package project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import project.entity.AreaEntity;

@Repository
public interface AreaRepository extends JpaRepository<AreaEntity, Integer> {

}
