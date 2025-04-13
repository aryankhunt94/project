package project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import project.entity.CityEntity;
@Repository
public interface CityRepository extends JpaRepository<CityEntity, Integer> {

}
