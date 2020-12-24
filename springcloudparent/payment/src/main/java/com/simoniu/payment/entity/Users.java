package com.simoniu.payment.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

//用户实体类
@Entity //jpa自动反射成表
@Data  //有个Data注解，无需再写getter/setter方法
@AllArgsConstructor //带所有参数的构造方法
@NoArgsConstructor //生成不带参数默认的构造方法
public class Users extends BaseEntity implements Serializable,Cloneable  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //MySQL auto_increment
    @TableId(type = IdType.AUTO)
    private Integer uid; //用户编号 ，主键
    @Column(length = 50) //规定字段的长度
    private String username; //用户名
    //@Column(length = 20)
    private String password; //密码
    @Column(length = 50)
    private String birthday; //生日
    private int status; //用户的状态 1：用户可用  0：用户被禁用
    private String token; //当前用户的token值。服务器来生成的。

    //很多东西你看不到，并不代表它不存在。
    @Transient
    @TableField(exist = false)
    private String randomCode;
}
