package dev.codesquad.java.sidedish11.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import dev.codesquad.java.sidedish11.entity.Badge;
import dev.codesquad.java.sidedish11.entity.DetailSection;
import dev.codesquad.java.sidedish11.entity.Item;
import dev.codesquad.java.sidedish11.entity.ThumbImage;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Getter
public class ItemDetail {
    @JsonIgnore
    private String hash;
    private String top_image;
    private String product_description;
    private String point;
    private String delivery_info;
    private String delivery_fee;

    @JsonProperty("thumb_images")
    private List<String> thumbImagesStrings = new ArrayList<>();

    @JsonProperty("prices")
    private List<String> pricesStrings = new ArrayList<>();

    @JsonProperty("detail_section")
    private List<String> detailSectionStrings = new ArrayList<>();

    public ItemDetail(Item item) {
        this.hash = item.getHash();
        this.top_image = item.getImage();
        this.product_description = item.getDescription();
        this.point = item.getPoint();
        this.delivery_info = item.getDeliveryInfo();
        this.delivery_fee = item.getDeliveryFee();

        this.pricesStrings.add(item.getNormalPrice());
        this.pricesStrings.add(item.getSalePrice());

        for (ThumbImage thumbImage : item.getThumbImages()) {
            thumbImagesStrings.add(thumbImage.getName());
        }
        for (DetailSection detailSection : item.getDetailSections()) {
            detailSectionStrings.add(detailSection.getName());
        }
    }

    public String getHash() {
        return hash;
    }
}
