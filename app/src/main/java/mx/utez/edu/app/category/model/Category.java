package mx.utez.edu.app.category.model;

public class Category {
    private int id;
    private String name, description, iconName;

    public Category() {
    }

    public Category(String name, String iconName, String description) {
        this.name = name;
        this.description = description;
        this.iconName = iconName;
    }

    public Category(int id, String name, String iconName, String description) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.iconName = iconName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIconName() {
        return iconName;
    }

    public void setIconName(String iconName) {
        this.iconName = iconName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
