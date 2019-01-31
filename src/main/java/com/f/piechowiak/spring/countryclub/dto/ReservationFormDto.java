package com.f.piechowiak.spring.countryclub.dto;

import com.f.piechowiak.spring.countryclub.models.Hole;
import com.f.piechowiak.spring.countryclub.models.Member;

import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.util.List;

public class ReservationFormDto {

    @NotNull
    private Long holeId;
    private Long memberId;
    @NotNull
    private LocalDateTime start;
    @NotNull
    private LocalDateTime end;
    private String option;

    public Long getHoleId() {
        return holeId;
    }

    public void setHoleId(Long holeId) {
        this.holeId = holeId;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
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

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }
}
