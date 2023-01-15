package ru.shaleev.leaning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class CplusController {
    @GetMapping("/c")
    public String c(Map<String, Object> model) {

        return "c";
    }
}
