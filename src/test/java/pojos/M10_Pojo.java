package pojos;

public class M10_Pojo {

    private String name;
    private String description;

    public M10_Pojo() {
    }

    public M10_Pojo(String name, String description) {
        this.name = name;
        this.description = description;
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
}
