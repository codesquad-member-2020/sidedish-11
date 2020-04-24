package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.oauth.Github;
import dev.codesquad.java.sidedish11.oauth.GithubUser;
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

    @GetMapping("/login")
    public ResponseEntity oauth(@PathParam("code") String code) {
        Github github = loginService.requestAccessToken(code);
        GithubUser githubUser = loginService.requestUserId(github.getAuthorization());
        return ResponseEntity.ok(githubUser);
    }
}
