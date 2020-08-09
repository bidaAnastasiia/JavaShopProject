package com.boots.controller;

import com.boots.entity.Product;
import com.boots.service.ProductService;
import com.boots.service.CategoryService;
import com.boots.service.SexCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private SexCategoryService sexCategoryService;

    @GetMapping("/product/{id}")
    public String userList(@PathVariable("id") Long id, Model model) {
        Product p = productService.findProductById(id);
        model.addAttribute("product", p);
        return "product";
    }

    @GetMapping("/products/{sex}/{category}")
    public String productsList(@PathVariable("sex") String sex,@PathVariable("category") String category, Model model) {
        List<Product> products= productService.findBySexAndCategory(categoryService.findByName(category),sexCategoryService.findByName(sex));
        model.addAttribute("products", products);
        return "productGallery";
    }

}
