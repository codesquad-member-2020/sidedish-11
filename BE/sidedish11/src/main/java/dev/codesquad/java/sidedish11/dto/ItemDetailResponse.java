package dev.codesquad.java.sidedish11.dto;

import lombok.Getter;

@Getter
public class ItemDetailResponse {
    private String hash;
    private ItemDetail data;

    public ItemDetailResponse(String hash, ItemDetail data) {
        this.hash = hash;
        this.data = data;
    }
}
