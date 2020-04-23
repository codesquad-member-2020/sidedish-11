package dev.codesquad.java.sidedish11.oauth;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

public class RequestHeader {
    private MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();

    public RequestHeader() {
        headers.set("Accept", "application/json");
    }

    public MultiValueMap<String, String> getHeaders() {
        return headers;
    }
}
