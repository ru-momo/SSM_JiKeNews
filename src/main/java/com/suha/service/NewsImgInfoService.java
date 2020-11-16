package com.suha.service;

import com.mysql.cj.util.StringUtils;
import com.suha.mapper.NewsImgInfoMapper;
import com.suha.pojo.NewsImgInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class NewsImgInfoService {

    //自动注入
    @Autowired
    private NewsImgInfoMapper newsImgInfoMapper;

    @Autowired
    private RedisService redisService;

    /**
     * 添加图片信息
     * @param newsImgInfo
     */
    public void addNewsImgInfo(NewsImgInfo newsImgInfo){
        newsImgInfoMapper.insert(newsImgInfo);
    }

    /**
     * 批量删除
     * @param ids
     */
    public void deleteList(Integer[] ids){
        newsImgInfoMapper.delList(ids);
    }




    /**
     * 删除图片信息
     * @param id
     */
    public void delNewsImgInfo(Integer id){
        newsImgInfoMapper.deleteByPrimaryKey(id);
    }


    /**
     * 更新图片信息
     * @param newsImgInfo
     */
    public void updnewsImgInfo(NewsImgInfo newsImgInfo){
        newsImgInfoMapper.updateByPrimaryKey(newsImgInfo);
    }


    /**
     * 查询所有图片
     * @return
     */
    public List<NewsImgInfo> getListImgInfo(){
        return newsImgInfoMapper.selectAll();
    }


    /**
     * 按照条件查询
     * @param newsImgInfo
     * @return
     */
    public List<NewsImgInfo> getListByImg(NewsImgInfo newsImgInfo){
        return newsImgInfoMapper.select(newsImgInfo);
    }


    /**
     * 根据主键查询
      * @param id
     * @return
     */
    public NewsImgInfo getInfoById(Integer id){
        return newsImgInfoMapper.selectByPrimaryKey(id);

    }


    /**
     * 查询数据总条数
     * @param newsImgInfo
     * @return
     */
    public Integer getImgInfoCount(NewsImgInfo newsImgInfo){
        return newsImgInfoMapper.selectCount(newsImgInfo);
    }


    /**
     * 分页查询
     * @param img
     * @param pageNum
     * @param pageSize
     * @return
     */
    public Page<NewsImgInfo> getListInfoByPage(String img, Integer pageNum, Integer pageSize){
        Page<NewsImgInfo> page = null;
        String key = "news_img_info";
	    Map<String, Object> map = new HashMap<String, Object>();

	    //向map中填充条件
        if(!StringUtils.isNullOrEmpty(img)){
            map.put("img", img);
            key+= "_"+ img+ "_";
        }

        if(pageNum != null && pageSize != null){
            map.put("startIndex",(pageNum-1)*pageSize);
            map.put("pageSize", pageSize);
            key+= "_"+pageNum+"_"+pageSize;
        }

        if(redisService.hasKey(key)){
            //从redis中读取
            page = (Page<NewsImgInfo>) redisService.get(key);
        }else{
            //从数据库中读取

            //获取结果集
            List<NewsImgInfo> rows = newsImgInfoMapper.getListInfoByPage(map);
            //获取数据条数
            Integer totalCount = newsImgInfoMapper.getListCountByPage(map);
            //根据总条数计算总页数
            int total = (int) Math.ceil(totalCount * 1.0 / pageSize);
            page = new Page<NewsImgInfo>();

            page.setPage(pageNum); //当前页
            page.setRows(rows); //查询的结果集
            page.setSize(pageSize);//每页显示条数
            page.setTotal(total);//总页数
            page.setSum(totalCount);//数据总数

            //保存在redis中
            //redisService.set(key, page, 60*10);


        }
            return page;
    }


}
