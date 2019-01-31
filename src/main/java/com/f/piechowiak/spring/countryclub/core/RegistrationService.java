package com.f.piechowiak.spring.countryclub.core;

import com.f.piechowiak.spring.countryclub.dto.RegistrationFormDto;
import com.f.piechowiak.spring.countryclub.models.Member;
import com.f.piechowiak.spring.countryclub.models.User;
import com.f.piechowiak.spring.countryclub.models.UserRole;
import com.f.piechowiak.spring.countryclub.repositories.UserRepository;
import com.f.piechowiak.spring.countryclub.repositories.UserRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import sun.security.krb5.internal.ccache.FileCredentialsCache;

@Service
@Transactional

public class RegistrationService {

    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserRoleRepository userRoleRepository;

    public RegistrationService(UserRepository userRepository) {
        this.userRepository = userRepository;
        /*this.passwordEncoder = passwordEncoder;
        this.userRoleRepository = userRoleRepository;*/
    }

    @Transactional
    public boolean register(RegistrationFormDto form) {
        Member memeber = new Member();
        memeber.setEmail( form.getEmail() );
        memeber.setFullname( form.getFullname() );
        String encodedPassword = passwordEncoder.encode( form.getPassword() );
        memeber.setPassword( encodedPassword );
        memeber.setAnnualfee( form.isAnnualfee() );
        memeber.setBirthday( form.getBirthDayAsDate() );
        memeber.setPhone( form.getPhone() );
        memeber.setStatus( form.getStatus() );
        memeber = userRepository.save( memeber );

        UserRole userRole = new UserRole();
        userRole.setUser( memeber );
        userRole.setRole( "ROLE_USER" );
        userRole = userRoleRepository.save( userRole );

        userRole = new UserRole();
        userRole.setUser( memeber );
        userRole.setRole( "ROLE_MEMBER" );
        userRole = userRoleRepository.save( userRole );

        return true;
    }
}
