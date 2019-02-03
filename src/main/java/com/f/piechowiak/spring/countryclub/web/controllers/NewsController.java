package com.f.piechowiak.spring.countryclub.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/news")
public class NewsController {

    @GetMapping
    public String getNews(){
        return "news";
    }
}
