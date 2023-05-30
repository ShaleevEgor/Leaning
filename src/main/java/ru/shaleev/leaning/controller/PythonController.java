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
import ru.shaleev.leaning.domain.PythonKata;
import ru.shaleev.leaning.domain.User;
import ru.shaleev.leaning.repos.PythonKataRepo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class PythonController {
    @Autowired
    private PythonKataRepo pythonKataRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/python")
    public String ViewPython(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<PythonKata> PythonKatas = pythonKataRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            PythonKatas = pythonKataRepo.findByTag(filter);
        } else {
            PythonKatas = pythonKataRepo.findAll();
        }
        model.addAttribute("PythonKatas", PythonKatas);
        model.addAttribute("filter", filter);

        return "python";
    }

    @PostMapping("/python")
    public String addPython(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag, Model model,
            @RequestParam("file") MultipartFile file) throws IOException  {

        PythonKata kata = new PythonKata(text, tag , user);

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            kata.setFilename(resultFilename);

            pythonKataRepo.save(kata);
        }

        pythonKataRepo.save(kata);

        Iterable<PythonKata> PythonKatas = pythonKataRepo.findAll();

        model.addAttribute("PythonKatas", PythonKatas);

        return "python";
    }
}
