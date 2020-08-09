package com.boots.service;

import com.boots.entity.Category;
import com.boots.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Optional;

@Service
public class CategoryService {
    @PersistenceContext
    private EntityManager em;
    @Autowired
    private CategoryRepository CategoryRepository;

    public Category findById(Long categoryId){
        Optional<Category> category = CategoryRepository.findById(categoryId);
        return category.orElse(null);
    }

    public Category findByName (String name){
        Category cr = CategoryRepository.findByName(name);
        return cr;
    }

}
