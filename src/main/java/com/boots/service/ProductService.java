package com.boots.service;

import com.boots.entity.Category;
import com.boots.entity.Product;
import com.boots.entity.SexCategory;
import com.boots.repository.CategoryRepository;
import com.boots.repository.ProductRepository;
import com.boots.repository.SexCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Optional;

@Service
public class ProductService {
    @PersistenceContext
    private EntityManager em;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private CategoryRepository categoryRepository;

    public Product findProductById(Long productId){
        Optional<Product> userFromDb = productRepository.findById(productId);
        return userFromDb.orElse(null);
    }
//    public Product findProductBySex(SexCategory sexCategory){
//        Optional<Product> optionalProduct = productRepository.findAll()
//    }

}
