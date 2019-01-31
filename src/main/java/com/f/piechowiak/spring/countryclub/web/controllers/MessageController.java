package com.f.piechowiak.spring.countryclub.web.controllers;


import com.f.piechowiak.spring.countryclub.core.MessageService;
import com.f.piechowiak.spring.countryclub.dto.MessageFormDto;
import com.f.piechowiak.spring.countryclub.models.User;
import com.f.piechowiak.spring.countryclub.repositories.MemberRepository;
import com.f.piechowiak.spring.countryclub.repositories.MessageRepository;
import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController {

    private MessageService messageService;
    @Autowired
    private MessageRepository messageRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private MemberRepository memberRepository;

    public MessageController (MessageService messageService){
        this.messageService = messageService;
    }

    @ModelAttribute("receivers")
    public List<User> users(){
        return userRepository.findAll();
    }

    @GetMapping
    public String prepareMessageForm(Model model){
        model.addAttribute( "messageForm", new MessageFormDto() );
        return "message-form";
    }

    @PostMapping
    public String sendMessage(@ModelAttribute("messageForm") @Valid MessageFormDto form, BindingResult result, Model model){

        if (result.hasErrors()){
            return "message-form";
        }
        boolean success = messageService.sendMessage( form );
        if (success){
            return "redirect:/";
        }
        else {
            result.rejectValue( "option", null,"Cholipa, cos poszlo nie tak" );
            return "message-form";
        }

    }


}
