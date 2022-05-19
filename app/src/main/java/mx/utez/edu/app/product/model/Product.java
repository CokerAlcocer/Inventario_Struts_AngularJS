package mx.utez.edu.app.product.model;

public class Product {
    private int id, quantity, brandId, categoryId;
    private double price;
    private String name, description, imageUrl, categoryName, categoryIconName;

    public Product() {
    }

    public Product(int quantity, int brandId, int categoryId, double price, String name, String description, String imageUrl) {
        this.quantity = quantity;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.price = price;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
    }

    public Product(int id, int quantity, int brandId, int categoryId, double price, String name, String description, String imageUrl) {
        this.id = id;
        this.quantity = quantity;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.price = price;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
    }

    public Product(int id, int quantity, int brandId, int categoryId, double price, String name, String description, String imageUrl, String categoryName, String categoryIconName) {
        this.id = id;
        this.quantity = quantity;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.price = price;
        this.name = name;
        this.description = description;
        this.imageUrl = imageUrl;
        this.categoryName = categoryName;
        this.categoryIconName = categoryIconName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryIconName() {
        return categoryIconName;
    }

    public void setCategoryIconName(String categoryIconName) {
        this.categoryIconName = categoryIconName;
    }
}
