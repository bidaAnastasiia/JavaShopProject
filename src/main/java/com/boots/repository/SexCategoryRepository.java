package com.boots.repository;

import com.boots.entity.Category;
import com.boots.entity.SexCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface SexCategoryRepository extends JpaRepository<SexCategory, Long> {
    @Query("select s from SexCategory s where s.name = :name")
    SexCategory findByName(@Param("name") String name);
}

