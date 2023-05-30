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
import ru.shaleev.leaning.domain.CplusKata;
import ru.shaleev.leaning.domain.User;
import ru.shaleev.leaning.repos.CplusKataRepo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class CplusController  {
    @Autowired
    private CplusKataRepo cplusKataRepo;


    @Value("${upload.path}")
    private String uploadPath;

    private String filename;

    @GetMapping("/c")
    public String c(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<CplusKata> CplusKatas = cplusKataRepo.findAll();

        if (filter != null && !filter.isEmpty()) {
            CplusKatas = cplusKataRepo.findByTag(filter);
        } else {
            CplusKatas = cplusKataRepo.findAll();
        }

        model.addAttribute("CplusKatas", CplusKatas);
        model.addAttribute("filter", filter);

        return "c";
    }

    @PostMapping("/c")
    public String addCplus(
            @AuthenticationPrincipal User user,
            @RequestParam String tag,
            @RequestParam String description,Model model,
            @RequestParam("file") MultipartFile file) throws IOException {

        CplusKata CplusKata = new CplusKata(description, tag, user);

        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            CplusKata.setFilename(resultFilename);

            cplusKataRepo.save(CplusKata);
        }

            Iterable<CplusKata> CplusKatas = cplusKataRepo.findAll();

            model.addAttribute("CplusKatas", CplusKatas);

            return "c";
    }
}




