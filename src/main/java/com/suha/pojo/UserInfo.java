package com.suha.pojo;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@Table(name = "user_info")
public class UserInfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;             //id（主键）
    private String userName;        //用户名
    private String password;        //用户密码
    private String name;            //用户昵称
    private String email;           //电子邮箱
    private String information;     //简介
    private String telphone;     //手机号
}
