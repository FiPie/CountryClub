package com.f.piechowiak.spring.countryclub.core;

import com.f.piechowiak.spring.countryclub.dto.MessageFormDto;
import com.f.piechowiak.spring.countryclub.models.Message;
import com.f.piechowiak.spring.countryclub.repositories.MemberRepository;
import com.f.piechowiak.spring.countryclub.repositories.MessageRepository;
import com.f.piechowiak.spring.countryclub.repositories.ReservationRepository;
import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Service
@Transactional
public class MessageService {

    private UserRepository userRepository;

    @Autowired
    private MemberRepository memberRepository;
    @Autowired
    private MessageRepository messageRepository;
    @Autowired
    private ReservationRepository reservationRepository;


    public MessageService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    public boolean sendMessage(MessageFormDto form){
        Message message = new Message();

        message.setContent( form.getContent() );
        message.setDate( LocalDateTime.now() );
        message.setReceiver(memberRepository.findById(form.getReceiverId()).get());
        message.setSender( memberRepository.findById( form.getSenderId()).get());

        message = messageRepository.save( message );
        return true;
    }

}
