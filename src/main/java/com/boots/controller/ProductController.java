package com.boots.controller;

import com.boots.entity.Product;
import com.boots.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/product/{id}")
    public String userList(@PathVariable("id") Long id, Model model) {
        Product p = productService.findProductById(id);
        model.addAttribute("product", p);
        return "product";
    }
}
