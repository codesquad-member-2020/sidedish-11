package dev.codesquad.java.sidedish11.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import dev.codesquad.java.sidedish11.entity.Badge;
import dev.codesquad.java.sidedish11.entity.DeliveryType;
import dev.codesquad.java.sidedish11.entity.Item;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Getter
public class ItemResponse {
    @JsonIgnore
    private Long id;
    private String detail_hash;
    private String image;
    private String alt;
    private String title;
    private String description;
    private String n_price;
    private String s_price;

    @JsonProperty("badge")
    private List<String> badgeStrings = new ArrayList<>();

    @JsonProperty("delivery_type")
    private List<String> deliveryTypeStrings = new ArrayList<>();

    public ItemResponse(Item item) {
        this.id = item.getId();
        this.detail_hash = item.getHash();
        this.image = item.getImage();
        this.alt = item.getTitle();
        this.title = item.getTitle();
        this.description = item.getDescription();
        this.n_price = item.getNormalPrice();
        this.s_price = item.getSalePrice();

        for (Badge badge : item.getBadges()) {
            badgeStrings.add(badge.getName());
        }
        for (DeliveryType deliveryType : item.getDeliveryTypes()) {
            deliveryTypeStrings.add(deliveryType.getName());
        }
    }
}
