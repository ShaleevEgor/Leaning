package ru.shaleev.leaning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class LangController {

    @GetMapping("/java")
    public String java(Map<String, Object> model) {
        return "java";
    }

    @GetMapping("/c")
    public String c(Map<String, Object> model) {
        return "c";
    }

    @GetMapping("/python")
    public String python(Map<String, Object> model) {
        return "python";
    }
}
