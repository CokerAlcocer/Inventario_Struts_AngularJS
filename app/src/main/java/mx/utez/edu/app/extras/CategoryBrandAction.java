package mx.utez.edu.app.extras;

import com.opensymphony.xwork2.ActionSupport;
import mx.utez.edu.app.brand.model.Brand;
import mx.utez.edu.app.category.model.Category;
import mx.utez.edu.app.category.model.CategoryDao;

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

    // --- Action methods ---

    public String findAllBoth() {
        CategoryDao cd = new CategoryDao();
        categories = new ArrayList<>();
        categories = cd.findAll();
        if(categories.isEmpty()){
            System.out.println("Empty table category...");
        }else{
            System.out.println("Found data: "+categories.size()+" rows...");
        }
        return "success";
    }

    // --- Category Methods ---

    public String findAllCategories () {
        CategoryDao cd = new CategoryDao();
        categories = cd.findAll();
        return "success";
    }

    public String save() {
        CategoryDao cd = new CategoryDao();
        Category c = new Category(cName, cIconName, cDescription);
        if (!cd.save(c)){
            findAllBoth();
            return "fail";
        }
        findAllBoth();
        return "success";
    }

    public String update() {
        CategoryDao cd = new CategoryDao();
        Category c = new Category(uId, uName, uIconName, uDescription);
        if(!cd.update(c)){
            findAllBoth();
            return "fail";
        }

        findAllBoth();
        return "success";
    }

    public String delete() {
        CategoryDao cd = new CategoryDao();
        if (!cd.delete(cId)){
            findAllBoth();
            return "fail";
        }
        System.out.println("Se elimino");
        return "success";
    }

    // --- Brand Getters and setters ---

    public List<Brand> getBrands() {
        return brands;
    }

    public void setBrands(List<Brand> brands) {
        this.brands = brands;
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
