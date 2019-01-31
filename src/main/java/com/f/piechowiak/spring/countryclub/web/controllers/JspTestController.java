package com.f.piechowiak.spring.countryclub.web.controllers;


import com.f.piechowiak.spring.countryclub.dto.RegistrationFormDto;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("/test")
public class JspTestController {

    @GetMapping
    public String getTestPage(Principal principal, Model model){

        String name = principal.getName();
        model.addAttribute("user", name);
        return "test";
    }
}
