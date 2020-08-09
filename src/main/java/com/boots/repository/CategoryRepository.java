package com.boots.repository;

import com.boots.entity.Category;
import com.boots.entity.Product;
import com.boots.entity.SexCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query("select c from Category c where c.name = :name")
    Category findByName(@Param("name") String name);
}
