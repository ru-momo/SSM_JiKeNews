package com.suha.controller.end;


import com.suha.pojo.NewsImgInfo;
import com.suha.service.NewsImgInfoService;
import com.suha.util.Page;
import com.suha.util.ResponseCode;
import com.suha.util.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "end/")
public class NewsImgInfoController {

    @Autowired
    private NewsImgInfoService newsImgInfoService;

    /**
     * 分页查询
     * @param model
     * @param name
     * @param pageNum
     * @param pageSize
     * @return
     */

    @RequestMapping(value = "pagesImg",method = RequestMethod.GET)
    public String getInfoByPage(Model model,String name,
                                @RequestParam(defaultValue = "1")Integer pageNum,
                                @RequestParam(defaultValue = "10")Integer pageSize) {
        Page<NewsImgInfo> page = newsImgInfoService.getPageList(name, pageNum, pageSize);
        model.addAttribute("page", page);
        model.addAttribute("name",name);
        return "end/pagesImg";
    }



    /**
     * 删除
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "delInfo", method = RequestMethod.GET)
    public Map<String, Object> delImgInfo(Integer id){

        //判断id是否为空
        if(id == null){
            return ResponseCode.idIsNotNull();
        }
        //根据id查询具体图片信息
        NewsImgInfo imgInfo = new NewsImgInfo();
        imgInfo.setId(id);
        NewsImgInfo info = newsImgInfoService.getInfoById(id);

        //判断该信息是否存在
        if(info == null){
            return ResponseCode.error(id + "不存在");
        }
        //执行删除操作
        newsImgInfoService.delInfo(id);
        return ResponseCode.ok();
    }


    /**
     * 添加图片信息
     * @param files
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "addInfo", method = RequestMethod.POST)
    public Map<String, Object> getImgInfo(MultipartFile files,
                                          @RequestParam(defaultValue = "newsId") Integer newsId){

        System.out.println(newsId);
        NewsImgInfo record = new NewsImgInfo();
        record.setNewsId(newsId);
        List<NewsImgInfo> newsImgInfo = newsImgInfoService.getInfoByname(record);
        if(newsImgInfo.get(0).getNewsId() == null){
            return ResponseCode.paramIsNull();
        }
        //上传文件
        String file = UploadUtil.uploadFile(files);
        if (file == null){
            return ResponseCode.error("文件不存在");
        }

        newsImgInfo.get(0).setImg(file);

        //添加图片
        newsImgInfoService.addInfo(newsImgInfo.get(0));
        return ResponseCode.ok(newsImgInfo);
    }



    /**
     * 批量删除
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping("deleteByIds")
    public String deleteByIds(Integer[] ids){
        try{
            //批量删除
            newsImgInfoService.deleteList(ids);
        }catch (Exception e){
            return "error";
        }
            return "ok";
        }
    }







