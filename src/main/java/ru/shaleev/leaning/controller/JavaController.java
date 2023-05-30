package ru.shaleev.leaning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.shaleev.leaning.domain.JavaKata;
import ru.shaleev.leaning.domain.User;
import ru.shaleev.leaning.repos.JavaKataRepo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class JavaController {
    @Autowired
    private JavaKataRepo javaKataRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/java")
    public String java(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<JavaKata> katas = javaKataRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            katas = javaKataRepo.findByTag(filter);
        } else {
            katas = javaKataRepo.findAll();
        }
        model.addAttribute("katas", katas);
        model.addAttribute("filter", filter);

        return "java";
    }

    @PostMapping("/java")
    public String addJava(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag, Model model,
            @RequestParam("file") MultipartFile file) throws IOException {

        JavaKata kata = new JavaKata(text, tag, user);

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            kata.setFilename(resultFilename);

            javaKataRepo.save(kata);
        }

        Iterable<JavaKata> katas = javaKataRepo.findAll();

        model.addAttribute("katas", katas);

        return "java";
        }
}

