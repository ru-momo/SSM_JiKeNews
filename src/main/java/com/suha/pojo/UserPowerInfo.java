package com.suha.pojo;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Data
@Table(name = "user_power_info")
public class UserPowerInfo implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String userName;
    private Integer power;//后台权限
    private Integer checkUserPower;//查看用户权限
    private Integer checkNewsPower;//查看新闻权限
    private Integer adminUserPower;//管理用户权限
    private Integer adminNewsPower;//管理新闻权限



}
