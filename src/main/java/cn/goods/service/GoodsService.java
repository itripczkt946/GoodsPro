package cn.goods.service;

import cn.goods.entity.GoodsDetail;
import cn.goods.entity.GoodsSort;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsService {

    /**
     * 查询所有的商品分类列表信息
     */
    List<GoodsSort> queryAllGoodsSort();

    /**
     * 按分类编号查询goods_detail表中的总记录数
     * @param sortId 分类编号
     */
    Integer queryGoodsDetailCount(long sortId);

    /**
     * 按分类编号查询goods_detail表的分页列表信息
     * @param sortId 分类编号
     * @param startPos 位置偏移量  15 条记录  3条  总页数为5页。 如果要显示第2页，  3  3
     * @param endPos 行数
     * @return 分页后的结果
     */
    List<GoodsDetail> queryGoodsDetailPageList(long sortId,  Integer startPos, Integer endPos);

    //通过goods_detail表中的id查询商品详情对象信息
    GoodsDetail queryGoodsDetailById(@Param("id") long id);

    //修改商品详情信息
    Integer updateGoodsDetail(GoodsDetail goodsDetail);
}
