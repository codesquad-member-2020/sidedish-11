package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.dto.OrderResponse;
import dev.codesquad.java.sidedish11.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

@RestController
@RequestMapping("/order")
public class ApiOrderController {
    private Logger logger = LoggerFactory.getLogger(ApiOrderController.class);

    @Autowired
    private OrderService orderService;

    @PutMapping("/{hash}")
    public ResponseEntity order2(@PathVariable String hash, @RequestBody HashMap<String, Integer> order) {
        OrderResponse orderResponse = orderService.createOrder(hash, order);
        return ResponseEntity.ok(orderResponse);
    }
}
