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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@RestController
public class LoginController {
    private Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private LoginService loginService;

    @GetMapping("/logout")
    public ResponseEntity logout(HttpServletResponse response) {
        Cookie cookie = new Cookie(GITHUB_USER_ID, null);
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        return new ResponseEntity(HttpStatus.OK);
    }

    @GetMapping("/callback")
    public ResponseEntity oauth(@PathParam("code") String code, HttpServletResponse response) {
        Github github = loginService.requestAccessToken(code);
        GithubUser githubUser = loginService.requestUserId(github.getAuthorization());
        String jwt = loginService.buildToken(githubUser);

        response.setHeader(HEADER_LOCATION, SERVER_URL);
        response.setHeader(AUTHORIZATION, jwt);

        Cookie cookie = new Cookie(GITHUB_USER_ID, githubUser.getUserId());
        cookie.setMaxAge(EXPIRATION_TIME);
        response.addCookie(cookie);
        return new ResponseEntity(githubUser, HttpStatus.FOUND);
    }
}
