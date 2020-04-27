package dev.codesquad.java.sidedish11.controller;

import dev.codesquad.java.sidedish11.jwt.TokenService;
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

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@RestController
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private LoginService loginService;

    @Autowired
    private TokenService tokenService;

    @GetMapping("/login")
    public ResponseEntity login(HttpServletResponse response) {
        response.setHeader(HEADER_LOCATION, LOGIN_REQUEST_URL);
        return new ResponseEntity(HttpStatus.MOVED_PERMANENTLY);
    }

    @GetMapping("/callback")
    public ResponseEntity oauth(@PathParam("code") String code, HttpServletResponse response) {
        Github github = loginService.requestAccessToken(code);
        GithubUser githubUser = loginService.requestUserId(github.getAuthorization());
        response.setHeader(HEADER_LOCATION, SERVER_URL);

        String jwt = tokenService.buildToken(githubUser);
        response.setHeader(AUTHORIZATION, jwt);
        response.setHeader(GITHUB_USER_ID, githubUser.getUserId());
        return new ResponseEntity(githubUser, HttpStatus.FOUND);
    }

    @GetMapping("/")
    public String home() {
        return "good";
    }
}
