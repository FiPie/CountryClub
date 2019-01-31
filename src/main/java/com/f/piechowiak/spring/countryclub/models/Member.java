package com.f.piechowiak.spring.countryclub.models;

/*import sun.plugin2.message.Message;*/

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.Objects;
import java.util.StringJoiner;


@Entity
@Table(name = "members")
public class Member extends User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String status;
    @Column
    @NotNull
    private String phone;
    @Column
    @NotNull
    private LocalDate birthday;
    @Column
    private boolean annualfee;
    @Column
    private Double handicap;



    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
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

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
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

    @Override
    public String toString() {
        return new StringJoiner( ", ", Member.class.getSimpleName() + "[", "]" )
                .add( "id=" + id )
                .add( "status='" + status + "'" )
                .add( "phone='" + phone + "'" )
                .add( "birthday=" + birthday )
                .add( "annualfee=" + annualfee )
                .add( "handicap=" + handicap )
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Member member = (Member) o;
        return Objects.equals( id, member.id );
    }

    @Override
    public int hashCode() {
        return Objects.hash( id );
    }
}
