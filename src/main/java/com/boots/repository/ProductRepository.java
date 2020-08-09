package com.boots.repository;

import com.boots.entity.Category;
import com.boots.entity.Product;
import com.boots.entity.SexCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    @Query("select p from Product p where p.category = :category and p.sexCategory =:sex")
    List<Product> findBySexAndCategory(@Param("category") Category categoryId, @Param("sex") SexCategory sexCategoryId);
            }