package com.boots.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "t_sexCategory")
public class SexCategory {
    @Id
    private Long id;
    private String name;
    @OneToMany(mappedBy = "sexCategory")
    private List<Product> products;

    public SexCategory() {
    }

    public SexCategory(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
