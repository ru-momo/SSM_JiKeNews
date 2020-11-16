package com.suha.service;

import com.mysql.cj.util.StringUtils;
import com.suha.mapper.UserInfoMapper;
import com.suha.pojo.UserInfo;
import com.suha.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserInfoService {

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Autowired
    private RedisService rs;

    //查询所有
    public List<UserInfo> queryAll(){
        return userInfoMapper.selectAll();
    }


    //根据主键进行查询
    public UserInfo getInfoById(Integer id){
       return userInfoMapper.selectByPrimaryKey(id);
    }



    //按照条件查询
    public List<UserInfo> getInfoByname(UserInfo userInfo){
       return userInfoMapper.select(userInfo);

    }


    //添加用户信息
    public void insertInfo(UserInfo userInfo){
        userInfoMapper.insert(userInfo);
    }



    //根据id删除用户信息
    public void deleteInfo(Integer id){
        userInfoMapper.deleteByPrimaryKey(id);
    }



    //修改用户信息
    public void updateInfo(UserInfo userInfo){
        userInfoMapper.updateByPrimaryKey(userInfo);
    }

    /**
     * 分页查询
     * @param obj
     * @param name
     * @param pageNum
     * @param pageSize
     * @return
     */
    public Page<UserInfo> getPageList(Object obj, String name, Integer pageNum , Integer pageSize){
        String key = obj.toString();
        Map<String, Object> map = new HashMap<String, Object>();
        if (!StringUtils.isNullOrEmpty(name)) {
            map.put("name", name);
            key += "_" + name;
        }
        if (pageNum != null && pageSize != null) {
            map.put("startIndex", (pageNum-1)*pageSize);
            map.put("pageSize", pageSize);
            key += "_" + pageNum + "_" + pageSize ;
        }
        Page<UserInfo> page = null;
        if (rs.hasKey(key)) {
//		if (false) {
            page = (Page<UserInfo>)rs.get(key);
            System.out.println("redis获取");
        }
        else {
            try {
                System.out.println("数据库读取");
                page = new Page<UserInfo>();
                //定义方法名
                String methodName = "getListInfoByPage";
                //获取对应的方法
                Method method = obj.getClass().getMethod(methodName, Map.class);
                //调用方法 ，获取结果集
                List<UserInfo> list =(List<UserInfo>)method.invoke(obj,map);

                methodName = "getListCountByPage";
                method = obj.getClass().getMethod(methodName, Map.class);
                Integer totalCount = (Integer)method.invoke(obj,map);

                //计算总页数
                int total = (int)Math.ceil(totalCount * 1.0 / pageSize) ;
                page.setPage(pageNum);
                page.setSize(pageSize);
                page.setRows(list);
                page.setTotal(total);
                page.setSum(totalCount); // 设置总条数
                rs.set(key, page, 5*60);
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
        return page;
    }



}
