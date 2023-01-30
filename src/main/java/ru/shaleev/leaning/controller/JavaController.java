package ru.shaleev.leaning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.shaleev.leaning.domain.JavaKata;
import ru.shaleev.leaning.domain.User;
import ru.shaleev.leaning.repos.JavaKataRepo;

import java.util.Map;

@Controller
public class JavaController {
    @Autowired
    private JavaKataRepo javaKataRepo;

    @GetMapping("/java")
    public String java(Map<String, Object>model) {
        Iterable<JavaKata> katas = javaKataRepo.findAll();
        model.put("katas", katas);
        return "java";
    }

    @PostMapping("/java")
    public String addJava(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag, Map<String, Object> model) {

        JavaKata kata = new JavaKata(text, tag , user);

        javaKataRepo.save(kata);

        Iterable<JavaKata> katas = javaKataRepo.findAll();

        model.put("katas", katas);

        return "java";
    }
}
