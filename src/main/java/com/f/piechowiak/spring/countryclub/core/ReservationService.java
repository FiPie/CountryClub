package com.f.piechowiak.spring.countryclub.core;


import com.f.piechowiak.spring.countryclub.dto.ReservationFormDto;
import com.f.piechowiak.spring.countryclub.models.Reservation;
import com.f.piechowiak.spring.countryclub.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ReservationService {


    private UserRepository userRepository;
    @Autowired
    private ReservationRepository reservationRepository;
    @Autowired
    private HoleRepository holeRepository;

    @Autowired
    private MemberRepository memberRepository;

    public ReservationService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    public boolean reserve(ReservationFormDto form) {
        Reservation reservation = new Reservation();

        reservation.setHole(holeRepository.findById( form.getHoleId()).get() );
        reservation.setMember( memberRepository.findById(form.getMemberId()).get());
        reservation.setStart(form.getStart());
        reservation.setEnd(form.getEnd());
        reservation.setOptionn(form.getOption());

        reservation = reservationRepository.save( reservation );

        return true;
    }


}
