package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.websocket.server.PathParam;

@RestController
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private LoginService loginService;

    @GetMapping("/callback")
    public ResponseEntity oauth(@PathParam("code") String code) {
        logger.info(">>> code : {}", code);
        String result = loginService.requestAccessToken(code);
        return ResponseEntity.ok(result);
    }
}
