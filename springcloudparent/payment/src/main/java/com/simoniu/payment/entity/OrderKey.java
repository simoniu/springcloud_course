package com.simoniu.payment.entity;

import java.io.Serializable;

//订单主键类
public class OrderKey implements Serializable {

    private String oid; //订单主表的编号
    private int id; //商品编号

}
