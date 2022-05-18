package mx.utez.edu.app.product.controller;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import mx.utez.edu.app.brand.Brand;
import mx.utez.edu.app.brand.BrandDao;
import mx.utez.edu.app.category.Category;
import mx.utez.edu.app.category.CategoryDao;
import mx.utez.edu.app.product.model.Product;
import mx.utez.edu.app.product.model.ProductDao;

import java.util.ArrayList;
import java.util.List;

public class ProductAction extends ActionSupport {
    // --- Product Variables ---
    // - Save -
    private int quantity, brandId, categoryId;
    private double price;
    private String name, description, imageUrl;
    // - Remove -
    private int id;
    // - Update -
    private int uId, uQuantity, uBrandId, uCategoryId;
    private double uPrice;
    private String uName, uDescription, uImageUrl;

    // - API -
    private String params;

    // --- Aux Variables ---
    private List<Product> products;
    private List<Category> categories;
    private List<Brand> brands;

    // --- Product Methods ---
    public String findAllProducts() {
        ProductDao pd = new ProductDao();
        products = pd.findAll();
        return "success";
    }

    public String saveProduct() {
        ProductDao pd = new ProductDao();
        Gson gson = new Gson();
        Product p = gson.fromJson(params, Product.class);

        if (!pd.save(p)){
            findAll();
            return "fail";
        }

        findAll();
        return "success";
    }

    public String updateProduct() {
        ProductDao pd = new ProductDao();
        Product p = new Product(uId, uQuantity, uBrandId, uCategoryId, uPrice, uName, uDescription, uImageUrl);
        if (!pd.update(p)){
            findAll();
            return "fail";
        }

        findAll();
        return "success";
    }

    public String removeProduct() {
        ProductDao pd = new ProductDao();
        if(!pd.delete(id)){
            findAll();
            return "fail";
        }

        findAll();
        return "success";
    }

    // --- Aux Methods ---
    public String findAll() {
        ProductDao pd = new ProductDao();
        BrandDao bd = new BrandDao();
        CategoryDao cd = new CategoryDao();

        products = new ArrayList<>();
        brands = new ArrayList<>();
        categories = new ArrayList<>();

        products = pd.findAll();
        brands = bd.findAll();
        categories = cd.findAll();

        return "success";
    }

    // --- API SETTER ---
    public void setParams(String params) {
        this.params = params;
    }

    // --- Aux Getters and Setters
    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public List<Brand> getBrands() {
        return brands;
    }

    public void setBrands(List<Brand> brands) {
        this.brands = brands;
    }

    // --- Product Getters and Setters ---
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public int getuQuantity() {
        return uQuantity;
    }

    public void setuQuantity(int uQuantity) {
        this.uQuantity = uQuantity;
    }

    public int getuBrandId() {
        return uBrandId;
    }

    public void setuBrandId(int uBrandId) {
        this.uBrandId = uBrandId;
    }

    public int getuCategoryId() {
        return uCategoryId;
    }

    public void setuCategoryId(int uCategoryId) {
        this.uCategoryId = uCategoryId;
    }

    public double getuPrice() {
        return uPrice;
    }

    public void setuPrice(double uPrice) {
        this.uPrice = uPrice;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuDescription() {
        return uDescription;
    }

    public void setuDescription(String uDescription) {
        this.uDescription = uDescription;
    }

    public String getuImageUrl() {
        return uImageUrl;
    }

    public void setuImageUrl(String uImageUrl) {
        this.uImageUrl = uImageUrl;
    }
}
