package com.leeln.user.center.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author liuzhenyuan
 * @version Last modified 2016/10/19
 */
@RestController
@RequestMapping
public class IndexController {

    @Value("${app:local}")
    String app;

    @RequestMapping
    public String index() {
        return app;
    }
}
