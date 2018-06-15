package myProject;

public class ToDo {
    protected int id;
    protected String title;
    protected String desc;

    public ToDo(int id) {
        this.id = id;
    }

    public ToDo(int id, String title, String desc) {
        this(title, desc);
        this.id = id;
    }

    public ToDo(String title, String desc) {
        this.title = title;
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
