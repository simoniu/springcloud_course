package com.simoniu.payment.config;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;
import java.util.Date;

@Component
@Slf4j
public class MyMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        DateTime dt = DateTime.of(new Date());
        log.info("start insert fill ....");
        this.strictInsertFill(metaObject, "createTime", String.class, dt.toString("yyyy-MM-dd HH:mm:ss")); // 起始版本 3.3.0(推荐使用)
        // 或者
        //this.strictUpdateFill(metaObject, "createTime", () -> LocalDateTime.now(), LocalDateTime.class); // 起始版本 3.3.3(推荐)
        // 或者
        //this.fillStrategy(metaObject, "createTime", LocalDateTime.now()); // 也可以使用(3.3.0 该方法有bug)
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        DateTime dt = DateTime.of(new Date());
        log.info("start update fill ....=>"+dt.toString("yyyy-MM-dd HH:mm:ss"));

        this.strictUpdateFill(metaObject, "modifyTime", String.class, dt.toString("yyyy-MM-dd HH:mm:ss")); // 起始版本 3.3.0(推荐)
        // 或者
        //this.strictUpdateFill(metaObject, "modifyTime", () -> LocalDateTime.now(), LocalDateTime.class); // 起始版本 3.3.3(推荐)
        // 或者
        //this.fillStrategy(metaObject, "modifyTime", LocalDateTime.now()); // 也可以使用(3.3.0 该方法有bug)
    }
}
