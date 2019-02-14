package com.f.piechowiak.spring.countryclub.repositories;

import com.f.piechowiak.spring.countryclub.models.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessageRepository extends JpaRepository<Message, Long> {


    List<Message> findAllByReceiverId(Long memberId);
    List<Message> findAllBySenderId(Long memberId);
}
