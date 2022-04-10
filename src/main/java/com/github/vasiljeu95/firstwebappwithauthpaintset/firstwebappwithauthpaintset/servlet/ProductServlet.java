package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.servlet;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.models.Product;
import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository.ProductRepository;
import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "items", value = "/items")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = new ArrayList<>();

        boolean isResult = ProductService.checkProductService(products);
//        products = ProductRepository.products;
//
//        products.add(new Product("LAYER", "Ulthuan Grey", 4.55, "https://www.games-workshop.com/resources/catalog/product/600x620/99189951056_layerUlthuanGrey.svg"));
//        products.add(new Product("LAYER", "Dorn Yellow", 4.55, "https://www.games-workshop.com/resources/catalog/product/600x620/99189951056_layerUlthuanGrey.svg"));
//        products.add(new Product("LAYER", "Phalanx Yellow", 4.55, "https://www.games-workshop.com/resources/catalog/product/600x620/99189951056_layerUlthuanGrey.svg"));

        req.setAttribute("products", products);
        req.getRequestDispatcher("/jsp/items.jsp").forward(req, resp);
    }
}
