package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.entity.Category;
import dev.codesquad.java.sidedish11.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/main")
public class ApiMainController {
    private Logger logger = LoggerFactory.getLogger(ApiMainController.class);

    @Autowired
    private CategoryService categoryService;

    @GetMapping("")
    public ResponseEntity viewAll() {
        return ResponseEntity.ok(categoryService.viewAll());
    }

    @GetMapping("/{id}")
    public ResponseEntity view(@PathVariable Long id) {
        Category category = categoryService.getCategory(id);
        return ResponseEntity.ok(category);
    }
}
