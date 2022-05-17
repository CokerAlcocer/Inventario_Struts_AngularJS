package mx.utez.edu.app.extras;

import com.opensymphony.xwork2.ActionSupport;
import mx.utez.edu.app.brand.Brand;
import mx.utez.edu.app.brand.BrandDao;
import mx.utez.edu.app.category.Category;
import mx.utez.edu.app.category.CategoryDao;

import java.util.ArrayList;
import java.util.List;

public class CategoryBrandAction extends ActionSupport {

    // --- Category Variables ---
    // - Find -
    private List<Category> categories;
    // - Register -
    private String cName, cIconName, cDescription;
    // - Remove -
    private int cId;
    // - Update -
    private String uName, uIconName, uDescription;
    private int uId;

    // --- Brand Variables ---
    // - Find -
    private List<Brand> brands;
    // - Register -
    private String bName, bImageUrl;
    // - Remove -
    private int bId;
    // - Update -
    private String uBrName, uBrImageUrl;
    private int uBrId;

    // --- Action methods ---
    public String findAllBoth() {
        CategoryDao cd = new CategoryDao();
        BrandDao bd = new BrandDao();

        categories = new ArrayList<>();
        brands = new ArrayList<>();

        categories = cd.findAll();
        brands = bd.findAll();

        return "success";
    }

    // --- Brand Methods ---
    public String findAllBrands() {
        BrandDao bd = new BrandDao();
        brands = bd.findAll();
        return "success";
    }

    public String saveBrand() {
        BrandDao bd = new BrandDao();
        Brand b = new Brand(bName, bImageUrl);
        if(!bd.save(b)){
            findAllBoth();
            return "fail";
        }

        findAllBoth();
        return "success";
    }

    // --- Category Methods ---
    public String findAllCategories() {
        CategoryDao cd = new CategoryDao();
        categories = cd.findAll();
        return "success";
    }

    public String saveCategory() {
        CategoryDao cd = new CategoryDao();
        Category c = new Category(cName, cIconName, cDescription);
        if (!cd.save(c)){
            findAllBoth();
            return "fail";
        }
        findAllBoth();
        return "success";
    }

    public String updateCategory() {
        CategoryDao cd = new CategoryDao();
        Category c = new Category(uId, uName, uIconName, uDescription);
        if(!cd.update(c)){
            findAllBoth();
            return "fail";
        }

        findAllBoth();
        return "success";
    }

    public String removeCategory() {
        CategoryDao cd = new CategoryDao();
        if (!cd.delete(cId)){
            findAllBoth();
            return "fail";
        }

        findAllBoth();
        return "success";
    }

    // --- Brand Getters and setters ---
    public List<Brand> getBrands() {
        return brands;
    }

    public void setBrands(List<Brand> brands) {
        this.brands = brands;
    }

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public String getbImageUrl() {
        return bImageUrl;
    }

    public void setbImageUrl(String bImageUrl) {
        this.bImageUrl = bImageUrl;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public String getuBrName() {
        return uBrName;
    }

    public void setuBrName(String uBrName) {
        this.uBrName = uBrName;
    }

    public String getuBrImageUrl() {
        return uBrImageUrl;
    }

    public void setuBrImageUrl(String uBrImageUrl) {
        this.uBrImageUrl = uBrImageUrl;
    }

    public int getuBrId() {
        return uBrId;
    }

    public void setuBrId(int uBrId) {
        this.uBrId = uBrId;
    }

    // --- Category Setters and Getters ---
    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getcIconName() {
        return cIconName;
    }

    public void setcIconName(String cIconName) {
        this.cIconName = cIconName;
    }

    public String getcDescription() {
        return cDescription;
    }

    public void setcDescription(String cDescription) {
        this.cDescription = cDescription;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuIconName() {
        return uIconName;
    }

    public void setuIconName(String uIconName) {
        this.uIconName = uIconName;
    }

    public String getuDescription() {
        return uDescription;
    }

    public void setuDescription(String uDescription) {
        this.uDescription = uDescription;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }
}
