package ru.shaleev.leaning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.shaleev.leaning.domain.PythonKata;
import ru.shaleev.leaning.domain.User;
import ru.shaleev.leaning.repos.PythonKataRepo;

import java.util.Map;

@Controller
public class PythonController {
    @Autowired
    private PythonKataRepo pythonKataRepo;

    @GetMapping("/python")
    public String ViewPython(Map<String, Object>model) {
        Iterable<PythonKata> PythonKatas = pythonKataRepo.findAll();
        model.put("PythonKatas", PythonKatas);
        return "python";
    }

    @PostMapping("/python")
    public String addPython(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag, Map<String, Object> model) {

        PythonKata kata = new PythonKata(text, tag , user);

        pythonKataRepo.save(kata);

        Iterable<PythonKata> PythonKatas = pythonKataRepo.findAll();

        model.put("PythonKatas", PythonKatas);

        return "python";
    }
}
