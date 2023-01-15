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
public class JavaController {
    @Autowired
    private JavaKataRepo javaKataRepo;

    @GetMapping
    public String java(@RequestParam(required = false, defaultValue = "") String filter, Map<String, Object>model) {
        Iterable<JavaKata> katas = javaKataRepo.findAll();
        model.put("katas", katas);
        return "java";
    }

    @PostMapping
    public String addJava(
            @RequestParam String text,
            @RequestParam String tag, Map<String, Object> model) {

        JavaKata kata = new JavaKata(text, tag);

        javaKataRepo.save(kata);

        Iterable<JavaKata> katas = javaKataRepo.findAll();

        model.put("katas", katas);

        return "java";
    }
}
