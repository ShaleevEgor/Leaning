package ru.shaleev.leaning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class PythonController {
    @GetMapping("/python")
    public String python(Map<String, Object> model) {

        return "python";
    }
}
