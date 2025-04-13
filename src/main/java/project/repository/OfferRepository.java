package project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import project.entity.OffersEntity;

public interface OfferRepository extends JpaRepository<OffersEntity, Integer>{

}
