package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.oauth.Github;
import dev.codesquad.java.sidedish11.oauth.GithubUser;
import dev.codesquad.java.sidedish11.oauth.RequestBody;
import dev.codesquad.java.sidedish11.oauth.RequestHeader;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.util.Date;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@Service
public class LoginService {
    private Logger logger = LoggerFactory.getLogger(LoginService.class);

    private static final String SECRET_KEY = "secret";

    @Value("${GITHUB_CLIENT_ID}")
    private String GITHUB_CLIENT_ID;

    @Value("${GITHUB_CLIENT_SECRET}")
    private String GITHUB_CLIENT_SECRET;

    @Transactional
    public Github requestAccessToken(String code) {
        logger.debug(">>> authorization code : {}, id : {} , secret : {}", code, GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET);
        RequestBody requestBody = new RequestBody(GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET, code);
        RequestHeader requestHeader = new RequestHeader(HEADER_ACCEPT, HEADER_ACCEPT_VALUE);
        HttpEntity httpEntity = new HttpEntity(requestBody, requestHeader.getHeaders());
        ResponseEntity<Github> responseEntity = new RestTemplate().postForEntity(GITHUB_ACCESS_TOKEN_URL, httpEntity, Github.class);
        return responseEntity.getBody();
    }

    @Transactional
    public GithubUser requestUserId(String authorization) {
        RequestHeader requestHeader = new RequestHeader(AUTHORIZATION, authorization);
        HttpEntity httpEntity = new HttpEntity(requestHeader.getHeaders());
        ResponseEntity<GithubUser> responseEntity = new RestTemplate().exchange(GITHUB_USER_INFO_URL, HttpMethod.GET, httpEntity, GithubUser.class);
        return responseEntity.getBody();
    }

    @Transactional
    public String buildToken(GithubUser githubUser) {
        return Jwts.builder()
                .claim(TOKEN_IDENTIFIER_NAME, TOKEN_IDENTIFIER_VALUE)
                .setSubject(githubUser.getUserId())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRATION_TIME))
                .signWith(SignatureAlgorithm.HS256, SECRET_KEY)
                .compact();
    }
}
