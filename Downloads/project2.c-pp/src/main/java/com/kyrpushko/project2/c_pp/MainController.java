package com.kyrpushko.project2.c_pp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("name", "Yaloys");
        return "home.jte"; // посилання на шаблон
    }
}
