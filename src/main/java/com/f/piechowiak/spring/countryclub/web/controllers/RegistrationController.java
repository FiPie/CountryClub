package com.f.piechowiak.spring.countryclub.web.controllers;

import com.f.piechowiak.spring.countryclub.core.RegistrationService;
import com.f.piechowiak.spring.countryclub.dto.RegistrationFormDto;
import com.f.piechowiak.spring.countryclub.models.Member;
import com.f.piechowiak.spring.countryclub.models.User;
import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    private RegistrationService registrationService;

    public RegistrationController(RegistrationService registrationService){
        this.registrationService = registrationService;
    }

    @GetMapping
    public String prepareRegistrationForm(Model model) {
        model.addAttribute("registrationForm", new RegistrationFormDto());

        return "register-form";
    }

    @PostMapping
    public String registerUser(@ModelAttribute("registrationForm") @Valid RegistrationFormDto form, BindingResult result){
        if (result.hasErrors()){
            return "register-form";
        }
        boolean success = registrationService.register(form);
        if (success){

            return "redirect:/login";
        }
        else {
            result.rejectValue( "email",null,"Ups cos poszlo nie tak" );
            return "register-form";
        }
    }

    /*private UserRepository userRepository;
    private PasswordEncoder passwordEncoder;

    public RegistrationController(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping
    public String prepareRegistrationForm(Model model) {
        model.addAttribute("newUser", new User());
        return "register";
    }

    @PostMapping
    public String registerUser(@ModelAttribute("newUser") @Valid User user,
                               BindingResult result) {
        if (result.hasErrors()) {
            return "register";
        }
        User userByEmail = userRepository.findOneByEmail(user.getEmail());
        if (userByEmail != null) {
            result.rejectValue("email", null, "Email jest już w systemie");
            return "register";
        }
        User userByUsername = userRepository.findOneByFullname(user.getFullname());
        if (userByUsername != null) {
            result.rejectValue("username", null, "Nazwa użytkownika jest już zajęta");
            return "register";
        }


        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        userRepository.save(user);
        return "redirect:/";
    }*/

}
