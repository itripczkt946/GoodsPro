package cn.goods.entity;

import java.math.BigDecimal;
import java.util.Date;

//商品明细表
public class GoodsDetail {
    private long id;
    private long sortId;
    private GoodsSort goodsSort;   // 多对一
    private String name;
    private String address;
    private BigDecimal price;
    private Date createDate;  //生产日期
    private int remaining;  //剩余数据

    public long getSortId() {
        return sortId;
    }

    public void setSortId(long sortId) {
        this.sortId = sortId;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public GoodsSort getGoodsSort() {
        return goodsSort;
    }

    public void setGoodsSort(GoodsSort goodsSort) {
        this.goodsSort = goodsSort;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getRemaining() {
        return remaining;
    }

    public void setRemaining(int remaining) {
        this.remaining = remaining;
    }
}
