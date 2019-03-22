package cn.goods.entity;

//商品分类实体类
public class GoodsSort {
    private long id;  //分类id
    private String name; //分类名称
    //alt + insert   封装快捷键

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
