package com.boots.service;

import com.boots.entity.SexCategory;
import com.boots.repository.SexCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Optional;

@Service
public class SexCategoryService {
    @PersistenceContext
    private EntityManager em;
    @Autowired
    private SexCategoryRepository sexCategoryRepository;

    public SexCategory findById(Long sexId){
        Optional<SexCategory> sex = sexCategoryRepository.findById(sexId);
        return sex.orElse(null);
    }

    public SexCategory findByName (String name){
        return sexCategoryRepository.findByName(name);
    }
}
