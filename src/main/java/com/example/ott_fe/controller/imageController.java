package com.example.ott_fe.controller;

import com.example.ott_fe.entity.Image;
import com.example.ott_fe.service.IImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
@RequestMapping
public class imageController {
    @Autowired
    IImageService imageService;

    @GetMapping("/list")
    public List<Image> list(Model model) {
        model.addAttribute("images", imageService.getAllImage());
        return imageService.getAllImage();
    }
}
