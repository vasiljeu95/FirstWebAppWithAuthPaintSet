package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository.AuthRepository;
import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository.ProductRepository;

import java.util.List;

public class ProductService {
    public static boolean checkProductService (List products) {
        return ProductRepository.resultProductRepository(products);
    }
}
