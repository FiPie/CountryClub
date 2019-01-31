package com.f.piechowiak.spring.countryclub.models;

import javax.persistence.*;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "holes")
public class Hole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;






    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return new StringJoiner( ", ", Hole.class.getSimpleName() + "[", "]" )
                .add( "id=" + id )
                .add( "name='" + name + "'" )
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Hole hole = (Hole) o;
        return Objects.equals( id, hole.id );
    }

    @Override
    public int hashCode() {
        return Objects.hash( id );
    }


}
