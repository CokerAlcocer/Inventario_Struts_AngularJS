package mx.utez.edu.app.extras;

import com.opensymphony.xwork2.ActionSupport;
import mx.utez.edu.app.brand.model.Brand;
import mx.utez.edu.app.category.model.Category;
import mx.utez.edu.app.category.model.CategoryDao;

import java.util.ArrayList;
import java.util.List;

public class CategoryBrandAction extends ActionSupport {
    private String cName, cIconName, cDescription;
    private int cId;
    private List<Brand> brands;
    private List<Category> categories;

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
            return "fail";
        }
        findAllBoth();
        return "success";
    }

    public String delete() {
        CategoryDao cd = new CategoryDao();
        if (!cd.delete(cId)){
            System.out.println("No se elimino");
            return "fail";
        }
        System.out.println("Se elimino");
        return "success";
    }

    // --- Getters and setters

    public List<Brand> getBrands() {
        return brands;
    }

    public void setBrands(List<Brand> brands) {
        this.brands = brands;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    // --- Category Setters and Getters ---

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
}
