package com.simoniu.payment.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

//订单主表
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderMain extends BaseEntity implements Serializable,Cloneable {

    @Id
    @Column(length = 48)
    //@TableId(type = IdType.ASSIGN_ID) //ASSIGN_ID 雪花算法，mybatis自动生成的。Long/String
    @TableId
    private String oid; //订单编号
    private Integer uid; //用户编号
    private String username; //用户名
    private String realname; //真实姓名
    private String mobile; //手机号码
    private String city; //收货人省份和城市区县
    private String street; //收货住址
    private double totalPrice; //总金额

}
