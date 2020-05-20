package com.boots.entity;

import javax.persistence.*;

@Entity
@Table(name = "t_product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Float price;
    private String description;
    private Integer countXS;
    private Integer countS;
    private Integer countM;
    private Integer countL;
    private Integer countXL;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="Category_id")
    private Category category;
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="SexCategory_id")
    private SexCategory sexCategory;

    public Product() {
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

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getCountXS() {
        return countXS;
    }

    public void setCountXS(Integer countXS) {
        this.countXS = countXS;
    }

    public Integer getCountS() {
        return countS;
    }

    public void setCountS(Integer countS) {
        this.countS = countS;
    }

    public Integer getCountM() {
        return countM;
    }

    public void setCountM(Integer countM) {
        this.countM = countM;
    }

    public Integer getCountL() {
        return countL;
    }

    public void setCountL(Integer countL) {
        this.countL = countL;
    }

    public Integer getCountXL() {
        return countXL;
    }

    public void setCountXL(Integer countXL) {
        this.countXL = countXL;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public SexCategory getSexCategory() {
        return sexCategory;
    }

    public void setSexCategory(SexCategory sexCategory) {
        this.sexCategory = sexCategory;
    }
}
