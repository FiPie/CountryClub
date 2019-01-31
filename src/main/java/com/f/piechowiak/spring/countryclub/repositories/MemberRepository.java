package com.f.piechowiak.spring.countryclub.repositories;

import com.f.piechowiak.spring.countryclub.models.Member;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<Member, Long> {
}
