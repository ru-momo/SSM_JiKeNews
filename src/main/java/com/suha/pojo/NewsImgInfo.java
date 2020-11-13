package com.suha.pojo;


import lombok.Data;
import org.springframework.data.annotation.Id;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

@Data
@Table(name = "news_img_info")
public class NewsImgInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;             //id（主键）
    private Integer newsId;         //新闻序号
    private String img;             //图片
}
