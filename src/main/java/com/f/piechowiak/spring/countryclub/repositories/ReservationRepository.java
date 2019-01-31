package com.f.piechowiak.spring.countryclub.repositories;

import com.f.piechowiak.spring.countryclub.models.Reservation;
import com.f.piechowiak.spring.countryclub.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Long> {


}
