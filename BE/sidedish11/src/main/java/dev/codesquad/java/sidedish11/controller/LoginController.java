package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.oauth.Github;
import dev.codesquad.java.sidedish11.oauth.GithubUser;
import dev.codesquad.java.sidedish11.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

@RestController
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private LoginService loginService;

    GithubUser githubUser;

    @GetMapping("/login")
    public ResponseEntity oauth(@PathParam("code") String code, HttpServletResponse response) {
        Github github = loginService.requestAccessToken(code);
        GithubUser githubUser = loginService.requestUserId(github.getAuthorization());

        String url = "/";
        response.setHeader("Location", url);
        this.githubUser = githubUser;
        return new ResponseEntity(githubUser, HttpStatus.FOUND);
        //return ResponseEntity.ok(githubUser);
    }

    @GetMapping("/")
    public ResponseEntity home() {
        return new ResponseEntity(githubUser, HttpStatus.OK);
    }
}
