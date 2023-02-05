package ru.shaleev.leaning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.shaleev.leaning.domain.CplusKata;
import ru.shaleev.leaning.domain.User;
import ru.shaleev.leaning.repos.CplusKataRepo;

import java.util.Map;

@Controller
public class CplusController{
    @Autowired
    private CplusKataRepo cplusKataRepo;

    @GetMapping("/c")
    public String c(Map<String, Object>model) {
        Iterable<CplusKata> CplusKatas = cplusKataRepo.findAll();
        model.put("CplusKatas", CplusKatas);
        return "c";
    }

    @PostMapping("/c")
    public String addCplus(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag, Map<String, Object> model) {

        CplusKata CplusKata = new CplusKata(text, tag , user);

        cplusKataRepo.save(CplusKata);

        Iterable<CplusKata> CplusKatas = cplusKataRepo.findAll();

        model.put("CplusKatas", CplusKatas);

        return "c";
    }
}

