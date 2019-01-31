package com.f.piechowiak.spring.countryclub.dto;

import javax.persistence.Column;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class RegistrationFormDto {

    @NotNull
    private String email;
    @NotNull
    @Size(min = 5)
    private String fullname;
    @NotNull
    @Size(min = 3, max = 20)
    private String password;
    @NotNull
    @Size(min = 3, max = 20)
    private String confirmedPassword;
    private String status;
    @NotNull
    private String phone;
    @NotNull
    private String birthday;
    @NotNull
    private boolean annualfee;

    public LocalDate getBirthDayAsDate() {
        return LocalDate.parse( birthday );
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public boolean isAnnualfee() {
        return annualfee;
    }

    public void setAnnualfee(boolean annualfee) {
        this.annualfee = annualfee;
    }

    public Double getHandicap() {
        return handicap;
    }

    public void setHandicap(Double handicap) {
        this.handicap = handicap;
    }

    private Double handicap;

    public RegistrationFormDto email(String email) {
        this.email = email;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmedPassword() {
        return confirmedPassword;
    }

    public void setConfirmedPassword(String confirmedPassword) {
        this.confirmedPassword = confirmedPassword;
    }
}
