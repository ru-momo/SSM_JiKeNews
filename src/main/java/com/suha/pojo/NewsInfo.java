package com.suha.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.suha.util.MyDate;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Id;
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
    private String introduction;   //描述
    private String content;    //内容

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date pubdate;     //发布日期
    private Integer state;    //状态

    private String getDate(Date date){
        return MyDate.dateToString(date);
    }


}
