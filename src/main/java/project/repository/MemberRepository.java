package project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import project.entity.MemberEntity;

@Repository

public interface MemberRepository extends JpaRepository<MemberEntity, Integer>{

}
