package ru.shaleev.leaning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.shaleev.leaning.domain.JavaKata;
import ru.shaleev.leaning.repos.JavaKataRepo;

import java.util.Map;

@Controller
public class LangController {

    @Autowired
    private JavaKataRepo javaKataRepo;

    @GetMapping("/dev")
    public String java(Map<String, Object> model) {

        return "dev";
    }

    @GetMapping("/java")
    public String dev(Map<String, Object> model) {

        return "java";
    }

    @PostMapping("/dev")
    public String adddev(
            @RequestParam String text,
            @RequestParam String tag,
            @RequestParam String title, Map<String, Object> model) {

        JavaKata kata = new JavaKata(text, tag, title);

        javaKataRepo.save(kata);

        Iterable<JavaKata> kataList = javaKataRepo.findAll();

        model.put("kataLists", kataList);

        return "dev";
    }

    @PostMapping("/java")
    public String addJava(
            @RequestParam String text,
            @RequestParam String tag,
            @RequestParam String title, Map<String, Object> model) {

        JavaKata kata = new JavaKata(text, tag, title);

        javaKataRepo.save(kata);

        Iterable<JavaKata> kataLists = javaKataRepo.findAll();

        model.put("kataLists", kataLists);

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
