package project.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import project.entity.RatingEntity;

public interface RatingRepository  extends JpaRepository<RatingEntity, Integer>{

}
