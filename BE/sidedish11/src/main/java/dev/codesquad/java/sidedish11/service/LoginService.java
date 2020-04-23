package dev.codesquad.java.sidedish11.service;

import dev.codesquad.java.sidedish11.oauth.RequestBody;
import dev.codesquad.java.sidedish11.oauth.RequestHeader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

@Service
public class LoginService {
    private Logger logger = LoggerFactory.getLogger(LoginService.class);

    @Transactional
    public String requestAccessToken() {
        String code = "";
        RequestBody requestBody = new RequestBody(GITHUB_CLIENT_ID, GITHUB_CLIENT_SECRET, code);
        RequestHeader requestHeader = new RequestHeader();

        HttpEntity httpEntity = new HttpEntity(requestBody, requestHeader.getHeaders());
        //ResponseEntity responseEntity = new RestTemplate().postForEntity();
        return "";
    }




}
