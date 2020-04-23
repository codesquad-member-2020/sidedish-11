package dev.codesquad.java.sidedish11.oauth;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import static dev.codesquad.java.sidedish11.common.CommonUtils.*;

public class RequestHeader {
    private MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();

    public RequestHeader() {
        headers.set(HEADER_ACCEPT, HEADER_ACCEPT_VALUE);
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
