package com.f.piechowiak.spring.countryclub.web.controllers;

import com.f.piechowiak.spring.countryclub.dto.LoginFormDto;
import com.f.piechowiak.spring.countryclub.models.User;
import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Principal;

@Controller
@RequestMapping
public class LoginController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    HttpSession session;
    /*private UserRepository userRepository;
    private PasswordEncoder passwordEncoder;

    public LoginController(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }*/

    @GetMapping("/login")
    public String prepareLoginForm(Principal principal, Model model) {
        /*String memberEmail = principal.getName();
        Long memberId = userRepository.findIdByEmail( memberEmail);
        session.setAttribute( "memberId", memberId );*/
        model.addAttribute("loginFormDto", new LoginFormDto());
        return "login-form";
    }

    /*
    @PostMapping("/login")
    public String login(@Valid LoginFormDto loginFormDto, BindingResult result, HttpSession session) {
        if (result.hasErrors()) {
            return "login-form";
        }
        User user = userRepository.findOneByEmail(loginFormDto.getEmail());
        if (user == null) {
            result.rejectValue("email", null, "Email i/lub hasło niepoprawne");
            return "login-form";
        }
        boolean matches = passwordEncoder.matches(loginFormDto.getPassword(), ((User) user).getPassword());
        if (!matches) {
            result.rejectValue("email", null, "Email i/lub hasło niepoprawne");
            return "login-form";
        }
        session.setAttribute("user", user);
        return "redirect:/";    //do strony logged
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
*/

}
