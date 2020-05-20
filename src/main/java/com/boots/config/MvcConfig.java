package com.boots.config;

import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.web.servlet.DispatcherServletAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@AutoConfigureAfter(DispatcherServletAutoConfiguration.class)
public class MvcConfig implements WebMvcConfigurer {

//    private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
//            "classpath:/static/", "classpath:/static/css/", "classpath:/static/js/" };
//
//    @Override
//    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        if (!registry.hasMappingForPattern("/static/**")) {
//            registry.addResourceHandler("/static/**").addResourceLocations(
//                    CLASSPATH_RESOURCE_LOCATIONS);
//        }
//    }
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/news").setViewName("news");
        registry.addViewController("/product").setViewName("product");
        registry.addViewController("/main").setViewName("main");
        registry.addViewController("/productGallery").setViewName("productGallery");
    }
}