package com.simoniu.payment.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

//商品表
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Items extends BaseEntity implements Serializable,Cloneable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @TableId(type = IdType.AUTO)
    private Integer id; //商品的编号
    private String name; //商品名称
    private String pic; //商品图片
    private int number; //库存

    @Transient
    private int buyCount; //购买数量

    private int price; //价格
    private String property; //商品的材质
    private String province; //商品产地的省份
    private String city; //商品产地的城市
    private int status; //商品的状态
    private int shopId; //店铺的编号
    private String shopName; //店铺的名称
    private double discount; //折扣
    private boolean isFreePost; //是否免邮


}
