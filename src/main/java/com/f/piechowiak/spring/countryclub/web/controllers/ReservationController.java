package com.f.piechowiak.spring.countryclub.web.controllers;


import com.f.piechowiak.spring.countryclub.core.ReservationService;
import com.f.piechowiak.spring.countryclub.dto.ReservationFormDto;
import com.f.piechowiak.spring.countryclub.models.Hole;
import com.f.piechowiak.spring.countryclub.repositories.HoleRepository;
import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/reservation")
public class ReservationController {

    private ReservationService reservationService;
    @Autowired
    private HoleRepository holeRepository;
    @Autowired
    private UserRepository userRepository;

    public ReservationController(ReservationService reservationService){
        this.reservationService = reservationService;
    }

    @Autowired
    HttpSession session;

    @ModelAttribute("holes")
    public List<Hole> holes() {
        return holeRepository.findAll();
    }

    @GetMapping
    public String prepareReservationForm(Model model) {
        model.addAttribute("reservationForm", new ReservationFormDto());
        return "reservation-form";
    }

    @PostMapping
    public  String reserveAHole(@ModelAttribute("reservationForm") @Valid ReservationFormDto form, BindingResult result, Model model){

        if (result.hasErrors()){
            return "reservation-form";
        }
        boolean success = reservationService.reserve(form);
        if (success){
            return "redirect:/";
        }
        else {
            result.rejectValue( "option",null,"Oh jej! Cos poszlo nie tak" );
            return "reservation-form";
        }
    }



}
