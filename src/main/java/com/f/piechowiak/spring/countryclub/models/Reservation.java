package com.f.piechowiak.spring.countryclub.models;


import javax.persistence.*;
import javax.validation.constraints.Future;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "reservations")
public class Reservation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "hole_id")
    private Hole hole;

    @ManyToOne
    @JoinColumn(name = "member_id")
    private Member member;

    @Future
    private LocalDateTime start;

    @Future
    private LocalDateTime end;

    private String optionn;

    public String getOptionn() {
        return optionn;
    }

    public void setOptionn(String optionn) {
        this.optionn = optionn;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Hole getHole() {
        return hole;
    }

    public void setHole(Hole hole) {
        this.hole = hole;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public LocalDateTime getStart() {
        return start;
    }

    public void setStart(LocalDateTime start) {
        this.start = start;
    }

    public LocalDateTime getEnd() {
        return end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
    }

    @Override
    public String toString() {
        return new StringJoiner( ", ", Reservation.class.getSimpleName() + "[", "]" )
                .add( "id=" + id )
                .add( "hole=" + hole )
                .add( "member=" + member )
                .add( "start=" + start )
                .add( "end=" + end )
                .add( "option='" + optionn + "'" )
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Reservation that = (Reservation) o;
        return Objects.equals( id, that.id );
    }

    @Override
    public int hashCode() {
        return Objects.hash( id );
    }
}
