package dev.codesquad.java.sidedish11.oauth;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

public class RequestHeader {
    private MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();

    public RequestHeader(String key, String value) {
        headers.set(key, value);
    }

    public MultiValueMap<String, String> getHeaders() {
        return headers;
    }

    @Override
    public String toString() {
        return "RequestHeader{" +
                "headers=" + headers +
                '}';
    }
}
