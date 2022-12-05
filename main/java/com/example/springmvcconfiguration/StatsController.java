package com.example.springmvcconfiguration;

import jdk.internal.org.jline.keymap.BindingReader;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class StatsController {

    @RequestMapping("/showStatsForm")
    public String showForm(@Valid @ModelAttribute("playerStats")PlayerStats playerStats, BindingResult result) {

        if(result.hasErrors()) {
            return "head-to-head";
        }
        else {
            return "stats-confirmation";
        }
    }

}
