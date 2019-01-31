package com.f.piechowiak.spring.countryclub.models;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "users")
@Inheritance(strategy = InheritanceType.JOINED)
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String fullname;
    @Column
    private String email;
    @Column
    private String password;






    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return new StringJoiner( ", ", User.class.getSimpleName() + "[", "]" )
                .add( "id=" + id )
                .add( "fullname='" + fullname + "'" )
                .add( "email='" + email + "'" )
                .add( "password='" + password + "'" )
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals( id, user.id );
    }

    @Override
    public int hashCode() {
        return Objects.hash( id );
    }
}
