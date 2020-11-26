package com.suha.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Data
@Table(name = "news_img_info")
public class NewsImgInfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer newsId;
    private String img;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date pubdate;

}
