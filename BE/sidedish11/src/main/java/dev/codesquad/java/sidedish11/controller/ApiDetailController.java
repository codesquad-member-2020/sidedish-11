package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.dto.ItemDetailResponse;
import dev.codesquad.java.sidedish11.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/detail")
public class ApiDetailController {
    private Logger logger = LoggerFactory.getLogger(ApiDetailController.class);

    @Autowired
    private ItemService itemService;

    @GetMapping("/{hash}")
    public ResponseEntity viewItem(@PathVariable String hash) {
        ItemDetailResponse itemDetailResponse = itemService.getItemDetail(hash);
        return ResponseEntity.ok(itemDetailResponse);
    }
}
