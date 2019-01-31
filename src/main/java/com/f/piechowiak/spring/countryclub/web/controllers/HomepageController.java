package com.f.piechowiak.spring.countryclub.web.controllers;

import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.security.Principal;

@Controller
@RequestMapping("/")
public class HomepageController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    HttpSession session;

    @GetMapping
    public String getHomepage(Principal principal){
        if (principal != null){
            if (session.getAttribute( "memberId") == null) {
                String memberEmail = principal.getName();
                Long memberId = userRepository.findByEmail( memberEmail ).getId();
                System.err.println("Wstawiłem do sesji: " + memberId);
                session.setAttribute( "memberId", memberId );
            }
        }

        return "homepage";
    }
}
