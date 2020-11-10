package com.suha.pojo;

import lombok.Data;
import org.springframework.data.annotation.Id;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import java.util.Date;
@Data
@Table(name = "news_info")
public class NewsInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;  //新闻编号
    private String type;  //新闻类型
    private String title;  //新闻标题
    private String describe;   //描述
    private String content;    //内容
    private Date pubdate;     //发布日期
    private Integer state;    //状态




}
