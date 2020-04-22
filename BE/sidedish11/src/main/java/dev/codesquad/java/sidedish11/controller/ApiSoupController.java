package dev.codesquad.java.sidedish11.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/soup")
public class ApiSoupController {
    private Logger logger = LoggerFactory.getLogger(ApiSoupController.class);

}
