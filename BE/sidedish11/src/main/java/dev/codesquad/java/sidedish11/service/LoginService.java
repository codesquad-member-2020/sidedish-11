package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.oauth.RequestBody;
import dev.codesquad.java.sidedish11.oauth.RequestHeader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@Service
public class LoginService {
    private Logger logger = LoggerFactory.getLogger(LoginService.class);

    @Value("${GITHUB_CLIENT_ID}")
    private String GITHUB_CLIENT_ID;

    @Value("${GITHUB_CLIENT_SECRET}")
    private String GITHUB_CLIENT_SECRET;

    @Transactional
    public String requestAccessToken(String code) {
        logger.debug(">>> authorization code : {}, id : {} , secret : {}", code, GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET);
        RequestBody requestBody = new RequestBody(GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET, code);
        RequestHeader requestHeader = new RequestHeader();
        HttpEntity httpEntity = new HttpEntity(requestBody, requestHeader.getHeaders());
        ResponseEntity<String> responseEntity = new RestTemplate().postForEntity(GITHUB_ACCESS_TOKEN_URL, httpEntity, String.class);
        return responseEntity.getBody();
    }
}
