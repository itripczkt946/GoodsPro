package cn.goods.service;

import cn.goods.dao.GoodsMapper;
import cn.goods.entity.GoodsDetail;
import cn.goods.entity.GoodsSort;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("goodsService")
public class GoodsServiceImpl implements  GoodsService {

    @Resource
    private GoodsMapper goodsMapper;

    @Override
    public List<GoodsSort> queryAllGoodsSort() {
        return goodsMapper.queryAllGoodsSort();
    }

    @Override
    public Integer queryGoodsDetailCount(long sortId) {
        return goodsMapper.queryGoodsDetailCount(sortId);
    }

    @Override
    public List<GoodsDetail> queryGoodsDetailPageList(long sortId, Integer startPos, Integer endPos) {
        return goodsMapper.queryGoodsDetailPageList(sortId, startPos,endPos);
    }

    @Override
    public GoodsDetail queryGoodsDetailById(long id) {
        return goodsMapper.queryGoodsDetailById(id);
    }

    @Override
    public Integer updateGoodsDetail(GoodsDetail goodsDetail) {
        return goodsMapper.updateGoodsDetail(goodsDetail);
    }
}
