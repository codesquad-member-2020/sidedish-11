package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/order")
public class ApiOrderController {
    private Logger logger = LoggerFactory.getLogger(ApiOrderController.class);

    @Autowired
    private ItemService itemService;

    @GetMapping("")
    public String order() {
        itemService.createOrder("HDF73");
        return "";
    }

}
