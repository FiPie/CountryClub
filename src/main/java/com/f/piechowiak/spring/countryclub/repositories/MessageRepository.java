package com.f.piechowiak.spring.countryclub.repositories;

import com.f.piechowiak.spring.countryclub.models.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageRepository extends JpaRepository<Message, Long> {



}
