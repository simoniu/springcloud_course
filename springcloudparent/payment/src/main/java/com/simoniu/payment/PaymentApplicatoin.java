package com.simoniu.payment;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.Banner;
import org.springframework.boot.ansi.AnsiOutput;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.core.SpringVersion;

@SpringBootApplication
@MapperScan("com.simoniu.payment.mapper")
public class PaymentApplicatoin {
    public static void main(String[] args) {
        //SpringApplication.run(MyshoppingApplication.class, args);

        //加载自定义的banner.
        AnsiOutput.setEnabled(AnsiOutput.Enabled.ALWAYS);
        new SpringApplicationBuilder(PaymentApplicatoin.class)//
                .main(SpringVersion.class) // 这个是为了可以加载 Spring 版本
                .bannerMode(Banner.Mode.CONSOLE)// 控制台打印
                .run(args);
    }
}
