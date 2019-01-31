package com.f.piechowiak.spring.countryclub.models;


import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.StringJoiner;

@Entity
@Table(name = "messages")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private LocalDateTime date;
    @Column
    private String content;

    @ManyToOne
    @JoinColumn(name = "sender_id")
    private User sender;

    @ManyToOne
    @JoinColumn(name = "receiver_id")
    private User receiver;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    @Override
    public String toString() {
        return new StringJoiner( ", ", Message.class.getSimpleName() + "[", "]" )
                .add( "id=" + id )
                .add( "date=" + date )
                .add( "content='" + content + "'" )
                .add( "sender=" + sender )
                .add( "receiver=" + receiver )
                .toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Message message = (Message) o;
        return Objects.equals( id, message.id );
    }

    @Override
    public int hashCode() {
        return Objects.hash( id );
    }
}
