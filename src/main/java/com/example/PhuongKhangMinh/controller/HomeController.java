package com.example.PhuongKhangMinh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author HP
 */
@Controller
public class HomeController {
    
    @GetMapping("/")
    public String index() {
        return "home/index";
    }
}
