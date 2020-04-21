package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.repository.CategoryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiHomeController {
    private Logger logger = LoggerFactory.getLogger(ApiHomeController.class);

    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping("/")
    public ResponseEntity viewAll() {
        return new ResponseEntity(categoryRepository.findAll(), HttpStatus.OK);
    }
}
