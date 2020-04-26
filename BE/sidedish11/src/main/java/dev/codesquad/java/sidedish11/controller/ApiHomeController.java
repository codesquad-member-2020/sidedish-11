package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.entity.Category;
import dev.codesquad.java.sidedish11.repository.ItemDao;
import dev.codesquad.java.sidedish11.service.CategoryService;
import dev.codesquad.java.sidedish11.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiHomeController {
    private Logger logger = LoggerFactory.getLogger(ApiHomeController.class);

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ItemDao itemDao;

    @GetMapping("/category")
    public ResponseEntity viewAllCategories() {
        return new ResponseEntity(categoryService.getAllCategories(), HttpStatus.OK);
    }

    @GetMapping("{id}")
    public ResponseEntity test(@PathVariable Long id) {
//        return ResponseEntity.ok(itemDao.findAllByCategoryId(id));
        return ResponseEntity.ok(categoryService.findCategoryTest(id));
    }
}
