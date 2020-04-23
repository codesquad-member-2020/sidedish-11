package dev.codesquad.java.sidedish11.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);

    @GetMapping("/callback")
    public ResponseEntity oauth(@RequestParam String code) {
        logger.info(">>> code : {}", code);
        return new ResponseEntity(code, HttpStatus.OK);
    }
}
