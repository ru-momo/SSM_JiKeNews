package com.suha.pojo;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "user_info")
public class UserInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;             //id（主键）
    private String userName;        //用户名
    private String password;        //用户密码
    private String name;            //用户昵称
    private String email;           //电子邮箱
    private String information;     //简介
}
