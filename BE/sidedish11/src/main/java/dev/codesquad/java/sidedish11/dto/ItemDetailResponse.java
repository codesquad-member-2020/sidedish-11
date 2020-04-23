package dev.codesquad.java.sidedish11.dto;

import lombok.Getter;

@Getter
public class ItemDetailResponse {
    private String hash;
    private ItemDetail data;

    public ItemDetailResponse(ItemDetail data) {
        this.hash = data.getHash();
        this.data = data;
    }
}
