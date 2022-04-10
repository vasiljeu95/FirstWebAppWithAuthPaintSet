package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.models;

public class Product {
    private String title;
    private String name;
    private double price;
    private String image;

    public Product(String title, String name, double price, String image) {
        this.title = title;
        this.name = name;
        this.price = price;
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
