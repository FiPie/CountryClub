package com.f.piechowiak.spring.countryclub.repositories;

import com.f.piechowiak.spring.countryclub.models.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, Long> {



}
