package com.f.piechowiak.spring.countryclub.repositories;

import com.f.piechowiak.spring.countryclub.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {


    User findOneByEmail(String email);

    User findOneByFullname(String fullname);

    User findEmailById(Long id);

    User findByEmail(String email);

    Long findIdByEmail(String email);

}
