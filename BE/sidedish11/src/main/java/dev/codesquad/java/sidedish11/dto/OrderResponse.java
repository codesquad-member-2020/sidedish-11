package dev.codesquad.java.sidedish11.dto;

import lombok.Getter;

@Getter
public class OrderResponse {
    private String code;
    private String message;

    public OrderResponse(String code, String message) {
        this.code = code;
        this.message = message;
    }
}
