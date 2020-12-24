package com.simoniu.payment.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor

//收货地址类
public class Address extends BaseEntity implements Serializable,Cloneable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @TableId(type = IdType.AUTO)
    private Integer aid; //地址编号
    private int uid; //用户编号
    private String realname;//真实姓名
    private String mobile;//手机号码
    private String city;//收货地址所在省份，城市，区县
    private String street;//具体地址，街道门牌号码
    private boolean isDefault; //是否是默认的收货地址

}
