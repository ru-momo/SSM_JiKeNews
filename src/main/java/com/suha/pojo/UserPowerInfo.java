package com.suha.pojo;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "user_power_info")
public class UserPowerInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String userName;
    private Integer power;
    private Integer checkUserPower;
    private Integer checkNewsPower;
    private Integer adminUserPower;
    private Integer adminNewsPower;



}
