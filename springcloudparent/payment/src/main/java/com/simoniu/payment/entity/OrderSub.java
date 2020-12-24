package com.simoniu.payment.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import java.io.Serializable;

//订单子表
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@IdClass(OrderKey.class)
public class OrderSub extends BaseEntity implements Serializable,Cloneable  {

    //注意，两个@Id说明是联合主键 oid+id
    @Id
    @Column(length = 48)
    private String oid; //订单编号
    @Id
    private Integer id; //商品编号
    private String name; //商品名称
    private int price; //单价
    private int buyCount; //购买数量
    private int sum; //小计


}
