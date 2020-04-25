package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.dto.CategoryResponse;
import dev.codesquad.java.sidedish11.service.CategoryService;
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
@RequestMapping("/side")
public class ApiSideController {
    private Logger logger = LoggerFactory.getLogger(ApiSideController.class);

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ItemService itemService;

    @GetMapping("")
    public ResponseEntity view() {
        CategoryResponse categoryResponse = categoryService.getCategory(3L);
        return ResponseEntity.ok(categoryResponse);
    }

    @GetMapping("/{hash}")
    public ResponseEntity viewItem(@PathVariable String hash) {
        return ResponseEntity.ok(itemService.getItem(3L, hash));
    }
}
